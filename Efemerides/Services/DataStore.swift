//
//  DataStore.swift
//  Efemerides
//
//  Created by Denis Denisov on 5/3/24.
//

final class DataStore {
    
    static let shared = DataStore()

    let events = [
        // MARK: - January
        (
            title: "Создание Соединённого Королевства",
            image: "creatBritish",
            description: "Этот день отмечает вступление в силу Акта о Союзе между Великобританией и Ирландией, объединившее два королевства под одним монархом и парламентом, что привело к образованию Соединённого Королевства Великобритании и Ирландии.",
            day: "01",
            month: "01",
            year: "1801"
        ),
        (
            title: "Завершение Реконкисты",
            image: "Завершение Реконкисты",
            description: "В этот день мавританский король Гранады сдался перед католическими монархами Испании, завершив длительный период Реконкисты и восстановив христианское правление над всей Испанией.",
            day: "02",
            month: "01",
            year: "1492"
        ),
        (
            title: "Отлучение Мартина Лютера",
            image: "Отлучение Мартина Лютера",
            description: "Мартин Лютер, центральная фигура Протестантской Реформации, был отлучён от Римско-Католической Церкви папой Львом X из-за его критических взглядов и тезисов, вызвавших глубокие религиозные и политические изменения в Европе.",
            day: "03",
            month: "01",
            year: "1502"
        ),
        (
            title: "Начало Английской гражданской войны",
            image: "EnglishWar",
            description: "Попытка Карла I арестовать членов парламента привела к вооружённому конфликту между сторонниками короля и парламента, заложив основу для долгой и кровопролитной гражданской войны в Англии.",
            day: "04",
            month: "01",
            year: "1642"
        ),
        (
            title: "Дело Дрейфуса",
            image: "Drayfuce",
            description: "Осуждение Альфреда Дрейфуса, французского армейского офицера, за предательство на основании сфабрикованных доказательств вызвало масштабное общественное возмущение и пересмотр отношения к правосудию и антисемитизму во Франции.5 января 1789 года стал важной вехой в истории Франции и всего мира.",
            day: "05",
            month: "01",
            year: "1895"
        ),
        (
            title: "Брак Генриха VIII и Анны Клевской",
            image: "genryVII",
            description: "Четвёртый брак Генриха VIII с Анной Клевской, который длился всего шесть месяцев, стал одним из множества его брачных союзов, оказавших влияние на английскую религиозную и политическую жизнь.",
            day: "06",
            month: "01",
            year: "1540"
        ),
        (
            title: "Открытие Галилеевых спутников",
            image: "Открытие Галилеевых спутников",
            description: "Галилео Галилей сделал революционное открытие четырёх крупнейших спутников Юпитера, что стало важным доказательством в поддержку гелиоцентрической системы Коперника и способствовало развитию астрономии.",
            day: "07",
            month: "01",
            year: "1610"
        ),
        (
            title: "Независимость Монако",
            image: "Независимость Монако",
            description: "В этот день Монако получило независимость от Республики Генуя, положив начало истории одного из самых маленьких и богатых государств мира.",
            day: "08",
            month: "01",
            year: "1297"
        ),
        (
            title: "Массовые убийства в Базеле",
            image: "murderInBasel",
            description: "Во время Чёрной смерти в Базеле было совершено массовое убийство евреев, обвиняемых в распространении чумы, что стало одним из множества антисемитских погромов в средневековой Европе.",
            day: "09",
            month: "01",
            year: "1349"
        ),
        (
            title: "Окончание Первой мировой войны",
            image: "endWWI",
            description: "Вступление в силу Версальского договора официально завершило Первую мировую войну, перекроив карту Европы и оставив глубокие последствия для международных отношений и политического устройства многих стран.",
            day: "10",
            month: "01",
            year: "1920"
        ),
        (
            title: "Использование инсулина в лечении диабета",
            image: "Использование инсулина в лечении диабета",
            description: "11 января 1922 года инсулин впервые применяется для лечения диабета у человека.",
            day: "11",
            month: "01",
            year: "1922"
        ),
        (
            title: "Отклонение законопроекта о предоставлении женщинам права голоса",
            image: "Отклонение законопроекта о предоставлении женщинам права голоса",
            description: "12 января 1915 года Палата представителей США отклоняет законопроект о предоставлении женщинам права голоса.",
            day: "12",
            month: "01",
            year: "1915"
        ),
        (
            title: "Публикация письма 'Я обвиняю'",
            image: "Публикация письма 'Я обвиняю'",
            description: "13 января 1898 года было опубликовано письмо Эмиля Золя 'Я обвиняю', в котором он обвинял французское правительство в антисемитизме и несправедливости.",
            day: "13",
            month: "01",
            year: "1898"
        ),
        (
            title: "Принятие 'Основных порядков'",
            image: "Принятие 'Основных порядков'",
            description: "14 января 1639 года в Коннектикуте были приняты 'Основные порядки', первая писаная конституция в Америке.",
            day: "14",
            month: "01",
            year: "1639"
        ),
        (
            title: "Запуск сайта Википедия",
            image: "wikipedia",
            description: "15 января 2001 года начинает работу сайт Википедия, позволяющий пользователям свободно редактировать его содержание.",
            day: "15",
            month: "01",
            year: "2001"
        ),
        (
            title: "Начало Персидской войны",
            image: "persianWar",
            description: "16 января 1991 года начинается Персидская война с воздушных налетов сил коалиции под командованием США на Ирак.",
            day: "16",
            month: "01",
            year: "1991"
        ),
        (
            title: "Рождение Бенджамина Франклина",
            image: "Рождение Бенджамина Франклина",
            description: "17 января 1706 года в Бостоне, Массачусетс, рождается Бенджамин Франклин, один из Основателей Соединенных Штатов.",
            day: "17",
            month: "01",
            year: "1706"
        ),
        (
            title: "Открытие Парижской мирной конференции",
            image: "openParisPeace",
            description: "18 января 1919 года открывается Парижская мирная конференция, которая приводит к подписанию Третьего Парижского мирного договора и завершению Первой мировой войны.",
            day: "18",
            month: "01",
            year: "1919"
        ),
        (
            title: "Рождение Эдгара Аллана По",
            image: "Рождение Эдгара Аллана По",
            description: "19 января 1809 года в Бостоне, Массачусетс, рождается Эдгар Аллан По, американский писатель и поэт.",
            day: "19",
            month: "01",
            year: "1809"
        ),
        (
            title: "Созыв первого английского парламента",
            image: "firstEnglishParlament",
            description: "20 января 1265 года в Вестминстер-Холле состоялся созыв первого английского парламента под руководством Саймона де Монфорта.",
            day: "20",
            month: "01",
            year: "1265"
        ),
        (
            title: "Казнь короля Людовика XVI",
            image: "Казнь короля Людовика XVI",
            description: "21 января 1793 года во время Французской революции король Франции Людовик XVI был казнен на гильотине.",
            day: "21",
            month: "01",
            year: "1793"
        ),
        (
            title: "Открытие первой школы высшего образования",
            image: "openFirstHighSchool",
            description: "22 января 1635 года в Париже была открыта первая школа высшего образования, Коллеж Франсез.",
            day: "22",
            month: "01",
            year: "1635"
        ),
        (
            title: "Открытие первой американской библиотеки",
            image: "openAmericanLibrary",
            description: "23 января 1733 года в Филадельфии открыта первая американская библиотека, названная 'Библиотекой общества колонистов'.",
            day: "23",
            month: "01",
            year: "1733"
        ),
        (
            title: "Завершение первого кругосветного путешествия",
            image: "Завершение первого кругосветного путешествия",
            description: "24 января 1522 года завершилось первое кругосветное путешествие, начатое Фернаном Магелланом и завершенное Хуаном Себастьяном Элькано.",
            day: "24",
            month: "01",
            year: "1522"
        ),
        (
            title: "Основание города Аделаиды",
            image: "Основание города Аделаиды",
            description: "25 января 1836 года город Аделаида в Южной Австралии был основан как свободное поселение.",
            day: "25",
            month: "01",
            year: "1836"
        ),
        (
            title: "Образование Лиги наций",
            image: "leagueOfNation",
            description: "26 января 1920 года в Париже была подписана Ковенант Лиги наций, первой постоянной международной организации.",
            day: "26",
            month: "01",
            year: "1920"
        ),
        (
            title: "Открытие первой австралийской газеты",
            image: "firstNewsAstrui",
            description: "27 января 1803 года в Сиднее была выпущена первая австралийская газета 'Sydney Gazette and New South Wales Advertiser'.",
            day: "27",
            month: "01",
            year: "1803"
        ),
        (
            title: "Подписание Стамбульской конвенции",
            image: "stambul",
            description: "28 января 1930 года была подписана Стамбульская конвенция, регулирующая морское судоходство по Босфору и Дарданеллам.",
            day: "28",
            month: "01",
            year: "1930"
        ),
        (
            title: "Основание города Сан-Франциско",
            image: "Основание города Сан-Франциско",
            description: "29 января 1847 года город Сан-Франциско в Калифорнии был основан группой золотоискателей.",
            day: "29",
            month: "01",
            year: "1847"
        ),
        (
            title: "Подписание Договора об основаниях Европейского союза",
            image: "ussr",
            description: "30 января 1957 года в Риме был подписан Договор об основаниях Европейского союза.",
            day: "30",
            month: "01",
            year: "1957"
        ),
        (
            title: "Завершение строительства Великой китайской стены",
            image: "ChinaWall",
            description: "31 января 1644 года завершилось строительство Великой китайской стены, построенной для защиты от нападений на севере Китая.",
            day: "31",
            month: "01",
            year: "1644"
        )
    ]
    
  private init() {}
}
