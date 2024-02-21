#import "templates/index.typ": *
#import "templates/utils.typ": *
#import "libs/tablex.typ": *

// Тут указываем только авторов [authors] и название работы [title] 
#show: index.with(authors: ("В.Д. Панков", ), title: [Разработка мобильного приложения "Музыкальный плеер"])

// ch -- center heading
#ch("Введение")


= Проектирование и разработка ПО

== Разработка структуры мобильного приложения

Для разработки приложения использовался фреймворк Kotlin Multiplatform, для обеспечения в будущем работы на разных платформах, из-за чего код распределён на:

| common (общий) -- код, который будет работать на всех платформах;

| native -- код, который работает нативно на каждой платформе (android, jvm, windows, iOS, MacOS). @kmp // <- ссылка на источник


При этом в common части была использована концепция Clean Architecture и паттерн MVVM, благодаря чему приложение было разделено на несколько слоев:

| data -- слой получения данных;

| ui -- слой пользовательского интерфейса;

| viewmodel -- смежный слой, между data и ui;

| model -- вспомогательные модели для интерфейса.

Итоговая структура приложения представлена на рисунке @structure. // <- ссылка на картинку, будет отображаться как просто число


#figure(
  image(ip("structure.png")),
  caption: "Структура мобильного приложения"
) <structure>

Для навигации была использована библиотека Appyx, для более простого её использования была создана диаграмма путей пользователя, представленная на рисунке @userflow.

#figure(
  image(ip("userflow.png")),
  caption: "Пути пользователя"
) <userflow>



#ch("Заключение")

#ch("Список использованных источников")

#bibliography("bibliography.yml", title: none, full: true, style: "gost-r-705-2008-numeric")

#chn([ПРИЛОЖЕНИЕ А Листинг разработанного приложения])


//#allFiles(json("src/app.json").at(0)) 
