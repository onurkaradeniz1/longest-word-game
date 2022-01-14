require 'open-uri'
require 'json'

class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.shuffle[0..9]
  end

  def score
    @word = params[:word].split("")
    @spl_letters = ('A'..'Z').to_a.shuffle[0..9]
    raise
  end

  def english_word
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    word_dictionary = open(url).read
    word = JSON.parse(word_dictionary)
    return word['found'] # ture
  end
end
