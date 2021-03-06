class Level < ActiveRecord::Base
  belongs_to :game

  validates_presence_of :text,
    :message => "Вы не ввели текст задания"

  validates_presence_of :correct_answers,
    :message => "Вы не ввели правильные ответы"

  validates_presence_of :game
end