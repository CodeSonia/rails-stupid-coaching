class QuestionsController < ApplicationController

  def ask
    @question = 'Ask your question: '
  end

  def answer
    # We use params to access the parameters that are sent in the HTTP request
    question = params[:question]
    @answer = if question == 'I am going to work'
                'Great!'
              elsif question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
