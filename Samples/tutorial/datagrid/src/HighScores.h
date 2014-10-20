/*
 * Copyright (c) 2006 - 2008
 * Wandering Monster Studios Limited
 *
 * Any use of this program is governed by the terms of Wandering Monster
 * Studios Limited's Licence Agreement included with this program, a copy
 * of which can be obtained by contacting Wandering Monster Studios
 * Limited at info@wanderingmonster.co.nz.
 *
 */

#ifndef HIGHSCORES_H
#define HIGHSCORES_H

#include <Rocket/Core/Types.h>
#include <Rocket/Controls/DataSource.h>

const int NUM_SCORES = 10;

/**
	This class stores a list of high scores, and loads the high scores list from a file upon initialisation.
	@author Robert Curry
 */

class HighScores : public Rocket::Controls::DataSource
{
public:
	static void Initialise();
	static void Shutdown();

	void GetRow(Rocket::Core::StringList& row, const Rocket::Core::String& table, int row_index, const Rocket::Core::StringList& columns);
	int GetNumRows(const Rocket::Core::String& table);

	static int GetHighScore();

	/// Two functions to add a score to the chart.
	/// Adds a full score, including a name. This won't prompt the user to enter their name.
	static void SubmitScore(const Rocket::Core::String& name, const Rocket::Core::Colourb& colour, int wave, int score);
private:
	HighScores();
	~HighScores();

	static HighScores* instance;

	void LoadScores();

	struct Score
	{
		Rocket::Core::String name;
		Rocket::Core::Colourb colour;
		bool name_required;
		int score;
		int wave;
	};

	Score scores[NUM_SCORES];
};

#endif
