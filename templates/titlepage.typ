/* Титульный лист
   [title] - Название работы
   [authors] - Авторы работы
   [teachers] - Преподаватели или другие([position])
   [date] - Дата создания документа
   [education] - Название организации
   [department] - Факультет или институт
   [position] - Должность преподавателя
   [documentName] - Название документа (например "ОТЧЁТ")
   [group] - Название группы
   [city] - Город
*/ 
#let titlepage(
  title: "",
  authors: (),
  teachers: (),
  date: datetime.today(),
  education: "Название организации",
  department: "Факультет",
  position: "преподаватель",
  documentName: "ОТЧЁТ ПО ЛАБОРАТОРНЫМ РАБОТАМ",
  group: "ГРУППА",
  city: "ГОРОД",
  discipline: "",
  isPractice: false // TODO если практика, то добавить дополнительное поле для оценки
  ) = {
  
  set text(font: "Times New Roman", size: 12pt, lang: "ru", hyphenate: false)
  set page(margin: (right: 15mm, left: 25mm, top: 20mm, bottom: 20mm), paper: "a4")
  align(center, education)
  align(center, department)
  
  align(left, stack(dir: ltr, "ОТЧЁТ 
ЗАЩИЩЁН С ОЦЕНКОЙ", align(bottom, line(length: 80pt, start: (5pt, 0pt)))) ) // тут start = отступ
  v(5pt)
  align(left, "РУКОВОДИТЕЛИ")
  grid(columns: (1.5fr, 1fr, 1.5fr), gutter: 10pt, 
  align(center, position), "", align(center, teachers.join(", ")), 
  line(length: 100%), line(length: 100%), line(length: 100%), 
  align(center, text(0.9em, "должность, уч.степень, звание")), align(center, text(0.9em, "подпись, дата")), align(center, text(0.9em, "инициалы, фамилия")),)
  
  
  v(3fr)
  align(center, upper(documentName))
  align(center, stack(dir: ttb, title, v(5pt), align(bottom,  line(length: 0%))))
  v(1.5fr)
  align(center, discipline)
  v(1.5fr)
  grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 10pt, 
  "ОТЧЁТ", "", "", "",
  "ВЫПОЛНИЛ", "", "", "",
  "СТУДЕНТ ГР №", align(center, group), "", align(center, authors.join(", ")), 
  "", line(length: 100%), line(length: 100%), line(length: 100%), 
  "", align(center, text(0.9em, "должность, уч.степень, звание")), align(center, text(0.9em, "подпись, дата")), align(center, text(0.9em, "инициалы, фамилия")),)
  v(3fr)
  align(center, stack(dir: ltr, city, h(10pt), str(date.year())))
}