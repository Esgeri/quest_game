puts "ГайдНет - квест игра по мотивам компьютерной игры \'Космические рейнджеры - 2\'"
puts 
puts "Цель: добыть из компьютерной сети Фэянь секретную информацию"
puts
puts "Заказчик: пеленги (инопланетная раса)"
puts
puts "По заказу пеленгов взламываем компьютерную сеть с сервера компании Макрохард."
puts
puts "Пеленги предпочитают добывать технологии с помощью шпионажа, 
за это их особенно не любят фэяне, которые часто становятся объектом их черных делишек."
puts
puts "Место выполнения: планета \'Фэяне\'"
puts
puts "=" * 100

puts "Начало квеста".center(100)
puts "Прибыв на планету к Фэянам, вы получаете записку с необходимой для выполнения задания информацией."
read = nil
until read == 1 || read == 2 do
    puts "Хотите прочесть? "
    puts "1 - Если ответ 'Да'."
    puts "2 - Если ответ 'Нет'."
    read = gets.to_i
end

puts

if read == 2
    abort "Вы очнулись и ничего не помните, видимо пеленги против вас использовали лазерный фонарь."
elsif read == 1
    puts "Прочитав записку. Вы получаете указание двигаться к ближайщему пункту подключения к Гайд-Нету."    
    puts

    time = Time.now
    if time.hour == 16
        puts "Тревога! На планете Феяне, начинается магнитная буря."
        puts "Вам лучше укрыться и подождать!"
        puts "Идёт магнитная буря. Ждите ..."
        sleep 15
        puts "Буря утихла. Можно приступать к делу."
        puts
    end

    place = nil
    until place == 1 || place == 2 do
        puts "Заплатить за часы работы, чтобы сесть за кресло?"
        puts "1 - Если ответ 'Да'."
        puts "2 - Если ответ 'Нет'."
        place = gets.to_i
        puts
    end

    if place == 2
        puts "Без доступа к Гайд-нету, вы провалили заказ. Пеленги идут за вами ..."
    elsif place == 1
        puts "Попадаем в сеть."
        puts "Сеть представляет собой небольшой лабиринт с различными охранниками между локациями."
        puts "Для обмана охранников у игрока есть эксплоиты, но количество одновременно загруженных эксплоитов ограничено."
        puts "Первым делом надо загрузить с жёсткого диска эксплоиты для обмана стражников."
        load = nil
        until load == 1 || load == 2 || load == 3 || load == 4 do
            puts "Грузим?: "
            puts "1 - Shear"
            puts "2 - Jumper"
            puts "3 - Mirror"
            puts "4 - Graft"
            load = gets.to_i
            puts
        end

        if load == 2
            puts "Удачно подгрузились."
            puts "Переходим в хакерский режим ..."
            port = nil
            until port == 1 || port == 2 || port == 3 || port == 4 do
                puts "Выберите маршрут: "
                puts "1 - Южный мост: первый порт"
                puts "2 - Восточный мост: первый порт"
                puts "3 - Южный мост: второй порт"
                puts "4 - Западный мост: первый мост"
                port = gets.to_i
                puts
            end

            if port == 4
                puts "Выбран правильный маршрут. Узнали пароль ID-13"
                access = nil
                until access == 1 || access == 2 || access == 3 || access == 4 do
                    puts "Передаем системе пароль: "
                    puts "1 - Восточный мост: второй порт"
                    puts "2 - Восточный мост: первый порт"
                    puts "3 - Южный мост: второй порт"
                    puts "4 - Восточный мост: второй порт"
                    access = gets.to_i
                    puts
                end

                if access == 2
                    puts "*" * 50
                    puts "Вы скачали все необходимые данные на флешку."
                    puts "Заказ успешно выполнен!"
                else
                    puts "Чувак у тебя большие проблемы!"
                    puts "Охранники и пеленги настигли тебя ..."
                end
            else
                puts "Ваше место нахождение обнаружена! Вы пойманы!"
            end
        else
            puts "Вам не удалось подгрузиться. Вас засекли охранники!"
        end
    end
end