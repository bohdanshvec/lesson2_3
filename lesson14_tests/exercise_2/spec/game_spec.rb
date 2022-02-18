# Подключим класс Game, который хотим тестировать
require 'game'

describe 'Game' do
  # Напишем два теста:
  #
  # * игрa с успешным результатом
  # * игрa с проигрышем
  #
  # Чтобы протестировать какую-то сложную ситуацию, нам нужно сделать сразу
  # несколько действий с нашим классом. В нашем случае, мы загадаем слово и
  # сделаем несколько правильных ходов с помощью метода next_step.

  # Тест на случай игры, где игрок выигрывает без единой ошибки
  it 'user wins the game' do
    # Загадываем слово
    game = Game.new('слово')

    # Убедимся, что в начале игры статус — игра в процессе
    expect(game.status).to eq 0

    # Удачно отгадаем несколько букв, симулируя действия игрока
    game.proverit('с')
    game.proverit 'о'
    game.proverit 'в'
    game.proverit 'л'

    # Теперь изучем состояние экземпляра game: количество ошибок и статус
    expect(game.errors).to eq 0
    expect(game.status).to eq 1
  end

  it 'user loses the game' do
        # Загадываем слово
        game = Game.new('слово')

        # Убедимся, что в начале игры статус — игра в процессе
        expect(game.status).to eq 0
    
        # Отгадываем неправильно все 7 букв, симулируя действия игрока
        game.proverit('я')
        game.proverit 'ч'
        game.proverit 'м'
        game.proverit 'и'
        game.proverit 'т'
        game.proverit 'ь'
        game.proverit 'б'

    
        # Теперь изучем состояние экземпляра game: количество ошибок и статус
        expect(game.errors).to eq 7
        expect(game.status).to eq -1
      end

end