# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
questions = [
  { id: 1, title: "You're really busy at work and a colleague is telling you their life story and personal woes. You:" },
  { id: 2, title: "You've been sitting in the doctor's waiting room for more than 25 minutes. You:" },
  { id: 3, title: "You're having an animated discussion with a colleague regarding a project that you’re in charge of. You:" },
  { id: 4, title: "You are taking part in a guided tour of a museum. You:" },
  { id: 5, title: "During dinner parties at your home, you have a hard time with people who:" },
]

answers = [
  { question_id: 1, title: "Don't dare to interrupt them", personality: 1 },
  { question_id: 1, title: "Think it's more important to give them some of your time; work can wait", personality: 2 },
  { question_id: 1, title: "Listen, but with only with half an ear", personality: 3 },
  { question_id: 1, title: "Interrupt and explain that you are really busy at the moment", personality: 4 },
  { question_id: 2, title: "Look at your watch every two minutes", personality: 1 },
  { question_id: 2, title: "Bubble with inner anger, but keep quiet", personality: 2 },
  { question_id: 2, title: "Explain to other equally impatient people in the room that the doctor is always running late", personality: 3 },
  { question_id: 2, title: "Complain in a loud voice, while tapping your foot impatiently", personality: 4 },
  { question_id: 3, title: "Don’t dare contradict them", personality: 1 },
  { question_id: 3, title: "Think that they are obviously right", personality: 2 },
  { question_id: 3, title: "Defend your own point of view, tooth and nail", personality: 3 },
  { question_id: 3, title: "Continuously interrupt your colleague", personality: 4 },
  { question_id: 4, title: "Are a bit too far towards the back so don’t really hear what the guide is saying", personality: 1 },
  { question_id: 4, title: "Follow the group without question", personality: 2 },
  { question_id: 4, title: "Make sure that everyone is able to hear properly", personality: 3 },
  { question_id: 4, title: "Are right up the front, adding your own comments in a loud voice", personality: 4 },
  { question_id: 5, title: "Ask you to tell a story in front of everyone else", personality: 1 },
  { question_id: 5, title: "Talk privately between themselves", personality: 2 },
  { question_id: 5, title: "Hang around you all evening", personality: 3 },
  { question_id: 5, title: "Always drag the conversation back to themselves", personality: 4 },
]

Question.create(questions)
Answer.create(answers)
