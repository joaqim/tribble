#include <iostream>
#include <SDL/SDL.h>
#include <Rocket/Core.h>
#include <Artemis/Artemis.h>
#include <angelscript.h>
using namespace std;

#include <Rocket/Debugger.h>
#include <Input.h>
#include <Shell.h>
#include <ShellRenderInterfaceOpenGL.h>

Rocket::Core::Context* context = NULL;

ShellRenderInterfaceExtensions *shell_renderer;

void GameLoop()
{
	context->Update();

	shell_renderer->PrepareRenderBuffer();
	context->Render();
	shell_renderer->PresentRenderBuffer();
}

#if defined ROCKET_PLATFORM_WIN32
#include <windows.h>
int APIENTRY WinMain(HINSTANCE ROCKET_UNUSED_PARAMETER(instance_handle), HINSTANCE ROCKET_UNUSED_PARAMETER(previous_instance_handle), char* ROCKET_UNUSED_PARAMETER(command_line), int ROCKET_UNUSED_PARAMETER(command_show))
#else
int main(int ROCKET_UNUSED_PARAMETER(argc), char** ROCKET_UNUSED_PARAMETER(argv))
#endif
{
#ifdef ROCKET_PLATFORM_WIN32
	ROCKET_UNUSED(instance_handle);
	ROCKET_UNUSED(previous_instance_handle);
	ROCKET_UNUSED(command_line);
	ROCKET_UNUSED(command_show);
#else
	ROCKET_UNUSED(argc);
	ROCKET_UNUSED(argv);
#endif

	ShellRenderInterfaceOpenGL opengl_renderer;
	shell_renderer = &opengl_renderer;

	// Generic OS initialisation, creates a window and attaches OpenGL.
	if (!Shell::Initialise("../Samples/tutorial/template/") ||
		!Shell::OpenWindow("Template Tutorial", shell_renderer, 1024, 768, true))
	{
		Shell::Shutdown();
		return -1;
	}

	// Rocket initialisation.
	Rocket::Core::SetRenderInterface(&opengl_renderer);
	opengl_renderer.SetViewport(1024, 768);

	ShellSystemInterface system_interface;
	Rocket::Core::SetSystemInterface(&system_interface);

	Rocket::Core::Initialise();

	// Create the main Rocket context and set it on the shell's input layer.
	context = Rocket::Core::CreateContext("main", Rocket::Core::Vector2i(1024, 768));
	if (context == NULL)
	{
		Rocket::Core::Shutdown();
		Shell::Shutdown();
		return -1;
	}

	Rocket::Debugger::Initialise(context);
	Input::SetContext(context);
	shell_renderer->SetContext(context);

	Shell::LoadFonts("../../assets/");

	// Load and show the tutorial document.
	Rocket::Core::ElementDocument* document = context->LoadDocument("data/tutorial.rml");
	if (document != NULL)
	{
		document->Show();
		document->RemoveReference();
	}

	Shell::EventLoop(GameLoop);

	// Shutdown Rocket.
	context->RemoveReference();
	Rocket::Core::Shutdown();

	Shell::CloseWindow();
	Shell::Shutdown();

	return 0;
}
