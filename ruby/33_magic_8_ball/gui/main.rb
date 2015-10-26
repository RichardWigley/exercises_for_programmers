require_relative '../lib/magic_8_ball/data'

Shoes. app title: 'Magic 8 ball', height: 120  do
  stack(margin: 12) do
    para "What's your question? "
    flow do
      question = edit_line
      button 'OK' do
        alert answers.sample
        question.text = ""
      end
    end
  end
end

