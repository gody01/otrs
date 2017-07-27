# --
# Copyright (C) 2010 ÐÐµÐ»ÑÑÐºÐ¸Ð¹ ÐÑÑÐµÐ¼
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::uk;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # $$START$$
    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%M/%D/%Y %T';
    $Self->{DateFormatLong}      = '%T - %M/%D/%Y';
    $Self->{DateFormatShort}     = '%M/%D/%Y';
    $Self->{DateInputFormat}     = '%M/%D/%Y';
    $Self->{DateInputFormatLong} = '%M/%D/%Y - %T';
    $Self->{Completeness}        = 0.657921291624622;

    # csv separator
    $Self->{Separator} = ',';

    $Self->{Translation} = {

        # Template: AAABase
        'Yes' => 'Так',
        'No' => 'Ні',
        'yes' => 'так',
        'no' => 'ні',
        'Off' => 'Вимкнено',
        'off' => 'вимкнено',
        'On' => 'Ввімкнено',
        'on' => 'ввімкнено',
        'top' => 'до початку',
        'end' => 'у кінець',
        'Done' => 'Готово',
        'Cancel' => 'Скасувати',
        'Reset' => 'Перезавантажити',
        'more than ... ago' => 'понад ... тому',
        'in more than ...' => 'у понад ...',
        'within the last ...' => 'за останні ...',
        'within the next ...' => 'за наступні ...',
        'Created within the last' => 'Створено протягом останніх ',
        'Created more than ... ago' => 'Створено понад ... тому',
        'Today' => 'Сьогодні',
        'Tomorrow' => 'Завтра',
        'Next week' => 'Наступний тиждень',
        'day' => 'день',
        'days' => 'днів',
        'day(s)' => 'днів',
        'd' => 'д.',
        'hour' => 'година',
        'hours' => 'годин',
        'hour(s)' => 'годин',
        'Hours' => 'Години',
        'h' => 'год.',
        'minute' => 'хвилина',
        'minutes' => 'хвилин',
        'minute(s)' => 'хвилин',
        'Minutes' => 'Хвилини',
        'm' => 'хв.',
        'month' => 'місяць',
        'months' => 'місяців',
        'month(s)' => 'місяців',
        'week' => 'тиждень',
        'week(s)' => 'тижнів',
        'quarter' => 'квартал',
        'quarter(s)' => 'квартал(ів)',
        'half-year' => 'півріччя',
        'half-year(s)' => 'півріччя',
        'year' => 'рік',
        'years' => 'років',
        'year(s)' => 'років',
        'second(s)' => 'секунд',
        'seconds' => 'секунд',
        'second' => 'секунда',
        's' => 'с.',
        'Time unit' => 'Одиниця часу',
        'wrote' => 'написав(-ла)',
        'Message' => 'Повідомлення',
        'Error' => 'Помилка',
        'Bug Report' => 'Звіт про помилку',
        'Attention' => 'Увага',
        'Warning' => 'Попередження',
        'Module' => 'Модуль',
        'Modulefile' => 'Файл модулю',
        'Subfunction' => 'Підфункція',
        'Line' => 'Лінія',
        'Setting' => 'Параметр',
        'Settings' => 'Параметри',
        'Example' => 'Приклад',
        'Examples' => 'Приклади',
        'valid' => 'дійсний',
        'Valid' => 'Дійсний',
        'invalid' => 'недійсний',
        'Invalid' => 'Недійсний',
        '* invalid' => '* недійсний',
        'invalid-temporarily' => 'тимчасово недійсний',
        ' 2 minutes' => '2 хвилини',
        ' 5 minutes' => '5 хвилин',
        ' 7 minutes' => '7 хвилин',
        '10 minutes' => '10 хвилин',
        '15 minutes' => '15 хвилин',
        'Mr.' => 'пан',
        'Mrs.' => 'пані',
        'Next' => 'Далі',
        'Back' => 'Назад',
        'Next...' => 'Далі…',
        '...Back' => '…Назад',
        '-none-' => '-немає-',
        'none' => 'немає',
        'none!' => 'немає!',
        'none - answered' => 'немає - відповів',
        'please do not edit!' => 'будь ласка, не редагуйте!',
        'Need Action' => 'Необхідна дія',
        'AddLink' => 'Додати посилання',
        'Link' => 'Зв\'язати',
        'Unlink' => 'Відв\'язати',
        'Linked' => 'Пов\'язаний',
        'Link (Normal)' => 'Зв\'язок (звичайний)',
        'Link (Parent)' => 'Зв\'язок (батьківський)',
        'Link (Child)' => 'Зв\'язок (дочірній)',
        'Normal' => 'Звичайний',
        'Parent' => 'Батьківський',
        'Child' => 'Дочірній',
        'Hit' => 'Успіх',
        'Hits' => 'Успіхи',
        'Text' => 'Текст',
        'Standard' => 'Стандарт',
        'Lite' => 'Полегшений',
        'User' => 'Користувач',
        'Username' => 'Ім\'я користувача',
        'Language' => 'Мова',
        'Languages' => 'Мови',
        'Password' => 'Пароль',
        'Preferences' => 'Налаштування',
        'Salutation' => 'Привітання',
        'Salutations' => 'Привітання',
        'Signature' => 'Підпис',
        'Signatures' => 'Підписи',
        'Customer' => 'Клієнт',
        'CustomerID' => 'ID клієнта',
        'CustomerIDs' => 'ID клієнта',
        'customer' => 'клієнт',
        'agent' => 'агент',
        'system' => 'система',
        'Customer Info' => 'Інформація про клієнта',
        'Customer Information' => 'Інформація про клієнта',
        'Customer Companies' => 'Компанії клієнта',
        'Company' => 'Компанія',
        'go!' => 'розпочати!',
        'go' => 'розпочати',
        'All' => 'Усі',
        'all' => 'усі',
        'Sorry' => 'Вибачте',
        'update!' => 'оновити!',
        'update' => 'оновити',
        'Update' => 'Оновити',
        'Updated!' => 'Оновити!',
        'submit!' => 'відправити!',
        'submit' => 'відправити',
        'Submit' => 'Відправити',
        'change!' => 'змінити!',
        'Change' => 'Змінити',
        'change' => 'змінити',
        'click here' => 'натисніть тут',
        'Comment' => 'Коментар',
        'Invalid Option!' => 'Недійсна опція!',
        'Invalid time!' => 'Недійсний час!',
        'Invalid date!' => 'Недійсна дата!',
        'Name' => 'Ім\'я',
        'Group' => 'Група',
        'Description' => 'Опис',
        'description' => 'опис',
        'Theme' => 'Тема',
        'Created' => 'Створено',
        'Created by' => 'Створено',
        'Changed' => 'Змінено',
        'Changed by' => 'Змінено',
        'Search' => 'Пошук',
        'and' => 'та',
        'between' => 'між',
        'before/after' => 'до/після',
        'Fulltext Search' => 'Повнотекстовий пошук',
        'Data' => 'Дата',
        'Options' => 'Опції',
        'Title' => 'Заголовок',
        'Item' => 'Елемент',
        'Delete' => 'Вилучити',
        'Edit' => 'Редагувати',
        'View' => 'Перегляд',
        'Number' => 'Число',
        'System' => 'Система',
        'Contact' => 'Контакт',
        'Contacts' => 'Контакти',
        'Export' => 'Експорт',
        'Up' => 'Вгору',
        'Down' => 'Вниз',
        'Add' => 'Додати',
        'Added!' => 'Додано!',
        'Category' => 'Категорія',
        'Viewer' => 'Переглядач',
        'Expand' => 'Розгорнути',
        'Small' => 'Малий',
        'Medium' => 'Середній',
        'Large' => 'Великий',
        'Date picker' => 'Вибір дати',
        'Show Tree Selection' => 'Показати дерево вибору',
        'The field content is too long!' => 'Значення поля занадто довге!',
        'Maximum size is %s characters.' => 'Максимальний розмір — %s символів.',
        'This field is required or' => 'Це поле є обов\'язковим або',
        'New message' => 'Нове повідомлення',
        'New message!' => 'Нове повідомлення!',
        'Please answer this ticket(s) to get back to the normal queue view!' =>
            'Будь ласка, дайте відповідь на цю заявку(-и) для повернення у звичайний режим перегляду черги!',
        'You have %s new message(s)!' => 'У Вас %s нових повідомлень!',
        'You have %s reminder ticket(s)!' => 'У Вас %s нагадувань!',
        'The recommended charset for your language is %s!' => 'Рекомендоване кодування для Вашої мови — %s!',
        'Change your password.' => 'Змінити пароль',
        'Please activate %s first!' => 'Будь ласка, спочатку активуйте %s!',
        'No suggestions' => 'Підказок немає',
        'Word' => 'Слово',
        'Ignore' => 'Ігнорувати',
        'replace with' => 'замінити на',
        'There is no account with that login name.' => 'Немає облікового запису з таким іменем.',
        'Login failed! Your user name or password was entered incorrectly.' =>
            'Помилка входу! Ваше ім\'я користувача або пароль уведено неправильно.',
        'There is no acount with that user name.' => 'Відсутній обліковий запис з таким іменем користувача.',
        'Please contact your administrator' => 'Будь ласка, зверніться до адміністратора',
        'Authentication succeeded, but no customer record is found in the customer backend. Please contact your administrator.' =>
            'Автентифікація пройшла успішно, але у бек-енді клієнтів не знайдено запису клієнта. Будь ласка, зв\'яжіться з адміністратором.',
        'This e-mail address already exists. Please log in or reset your password.' =>
            'Ця електронна адреса вже існує. Будь ласка, увійдіть або скиньте пароль.',
        'Logout' => 'Вийти',
        'Logout successful. Thank you for using %s!' => 'Вихід виконано. Дякуємо Вам за використання %s!',
        'Feature not active!' => 'Функція неактивна!',
        'Agent updated!' => 'Агент оновлений!',
        'Database Selection' => 'Вибір бази даних',
        'Create Database' => 'Створити базу даних',
        'System Settings' => 'Системні налаштування',
        'Mail Configuration' => 'Налаштування пошти',
        'Finished' => 'Закінчено',
        'Install OTRS' => 'Встановити OTRS',
        'Intro' => 'Вступ',
        'License' => 'Ліцензія',
        'Database' => 'База даних',
        'Configure Mail' => 'Налаштувати пошту',
        'Database deleted.' => 'Базу даних вилучено.',
        'Enter the password for the administrative database user.' => 'Уведіть пароль користувача-адміністратора бази даних.',
        'Enter the password for the database user.' => 'Уведіть пароль користувача бази даних.',
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty.' =>
            'Якщо Ви встановили кореневий пароль до своєї бази даних, його треба ввести тут. Якщо ні, залиште це поле пустим.',
        'Database already contains data - it should be empty!' => 'База даних уже містить дані — вона має бути пуста!',
        'Login is needed!' => 'Необхідно ввести ім\'я користувача!',
        'It is currently not possible to login due to a scheduled system maintenance.' =>
            'Наразі неможливо увійти через заплановані технічні роботи в системі.',
        'Password is needed!' => 'Необхідно ввести пароль!',
        'Take this Customer' => 'Обрати клієнта',
        'Take this User' => 'Обрати користувача',
        'possible' => 'імовірно',
        'reject' => 'відхилити',
        'reverse' => 'повернути',
        'Facility' => 'Об\'єкт',
        'Time Zone' => 'Часовий пояс',
        'Pending till' => 'В очікуванні до',
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            'Не використовуйте обліковий запис Superuser для роботи з OTRS! Створіть натомість нових агентів і працюйте під цими обліковками.',
        'Dispatching by email To: field.' => 'Перенаправлення за полем електронного листа Кому:',
        'Dispatching by selected Queue.' => 'Перенаправлення за обраною чергою.',
        'No entry found!' => 'Не знайдено жодного запису!',
        'Session invalid. Please log in again.' => 'Сесія недійсна. Будь ласка, увійдіть знову.',
        'Session has timed out. Please log in again.' => 'Сесія завершена. Будь ласка, увійдіть повторно.',
        'Session limit reached! Please try again later.' => 'Перевищено ліміт сесій! Будь ласка, спробуйте пізніше.',
        'No Permission!' => 'Немає прав!',
        '(Click here to add)' => '(Натисніть тут, щоб додати)',
        'Preview' => 'Попередній перегляд',
        'Package not correctly deployed! Please reinstall the package.' =>
            'Пакет розгорнуто некоректно! Будь ласка, перевстановіть пакет.',
        '%s is not writable!' => '%s не є доступним для запису!',
        'Cannot create %s!' => 'Не вдається створити %s!',
        'Check to activate this date' => 'Оберіть, щоб активувати цю дату',
        'You have Out of Office enabled, would you like to disable it?' =>
            'У Вас ввімкнено «Не при справах», хочете вимкнути?',
        'News about OTRS releases!' => 'Новини про релізи OTRS!',
        'Go to dashboard!' => 'Перейти до панелі!',
        'Customer %s added' => 'Додано клієнта %s',
        'Role added!' => 'Роль додана!',
        'Role updated!' => 'Роль оновлено!',
        'Attachment added!' => 'Прикріплення додано!',
        'Attachment updated!' => 'Прикріплення оновлено!',
        'Response added!' => 'Відповідь додано!',
        'Response updated!' => 'Відповідь оновлено!',
        'Group updated!' => 'Групу оновлено!',
        'Queue added!' => 'Чергу додано!',
        'Queue updated!' => 'Чергу оновлено!',
        'State added!' => 'Статус додано!',
        'State updated!' => 'Статус оновлено!',
        'Type added!' => 'Тип додано!',
        'Type updated!' => 'Тип оновлено!',
        'Customer updated!' => 'Клієнта оновлено!',
        'Customer company added!' => 'Компанію клієнта додано!',
        'Customer company updated!' => 'Компанію клієнта оновлено!',
        'Note: Company is invalid!' => 'Примітка: Компанія недійсна!',
        'Mail account added!' => 'Електронну пошту додано!',
        'Mail account updated!' => 'Електронну пошту оновлено!',
        'System e-mail address added!' => 'Системну електронну адресу додано!',
        'System e-mail address updated!' => 'Системну електронну адресу оновлено!',
        'Contract' => 'Контракт',
        'Online Customer: %s' => 'Клієнт онлайн: %s',
        'Online Agent: %s' => 'Агент онлайн: %s',
        'Calendar' => 'Каландар',
        'File' => 'Файл',
        'Filename' => 'Ім\'я файлу',
        'Type' => 'Тип',
        'Size' => 'Розмір',
        'Upload' => 'Завантажити',
        'Directory' => 'Директорія',
        'Signed' => 'Підписано',
        'Sign' => 'Підписати',
        'Crypted' => 'Зашифровано',
        'Crypt' => 'Шифрування',
        'PGP' => 'PGP',
        'PGP Key' => 'PGP ключ',
        'PGP Keys' => 'PGP ключі',
        'S/MIME' => 'S/MIME',
        'S/MIME Certificate' => 'S/MIME-сертифікат',
        'S/MIME Certificates' => 'S/MIME-сертифікати',
        'Office' => 'Офіс',
        'Phone' => 'Телефон',
        'Fax' => 'Факс',
        'Mobile' => 'Мобільний телефон',
        'Zip' => 'Індекс',
        'City' => 'Місто',
        'Street' => 'Вулиця',
        'Country' => 'Країна',
        'Location' => ' Місце розташування',
        'installed' => 'встановлено',
        'uninstalled' => 'деінстальовано',
        'Security Note: You should activate %s because application is already running!' =>
            'Попередження про безпеку: ви повинні активувати «%s», тому що додаток уже запущений!',
        'Unable to parse repository index document.' => 'Не вдалося проаналізувати документ змісту репозиторію.',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            'Не знайдено пакетів для Вашої версії фреймворку у цьому репозиторії, він містить лише пакети для інших версій фреймворку.',
        'No packages, or no new packages, found in selected repository.' =>
            'Не знайдено (нових) пакетів в обраному репозиторії.',
        'Edit the system configuration settings.' => 'Редагувати параметри налаштування системи.',
        'ACL information from database is not in sync with the system configuration, please deploy all ACLs.' =>
            'ACL-інформація з бази даних не синхронізована з конфігурацією системи, будь ласка, розгорніть усі ACL.',
        'printed at' => 'надруковано о',
        'Loading...' => 'Завантаження...',
        'Dear Mr. %s,' => 'Шановний пане %s!',
        'Dear Mrs. %s,' => 'Шановна пані %s!',
        'Dear %s,' => 'Шановний(-а) %s!',
        'Hello %s,' => ' Доброго дня, %s!',
        'This email address is not allowed to register. Please contact support staff.' =>
            'Цю адреса електронної пошти не можна зареєструвати. Будь ласка, зв\'яжіться з підтримкою.',
        'New account created. Sent login information to %s. Please check your email.' =>
            'Створено новий обліковий запис. Інформацію про вхід надіслано на %s. Будь ласка, перевірте свою електронну пошту.',
        'Please press Back and try again.' => 'Натисніть «Назад» і спробуйте ще раз',
        'Sent password reset instructions. Please check your email.' => 'Надіслано інструкції зі скидання пароля. Будь ласка, перевірте електронну пошту.',
        'Sent new password to %s. Please check your email.' => 'Надіслано новий пароль на %s. Будь ласка, перевірте електронну пошту.',
        'Upcoming Events' => 'Найближчі події',
        'Event' => 'Подія',
        'Events' => 'Події',
        'Invalid Token!' => 'Недійсний токен!',
        'more' => 'далі',
        'Collapse' => 'Згорнути',
        'Shown' => 'Показане',
        'Shown customer users' => 'Показані користувачі-клієнти',
        'News' => 'Новини',
        'Product News' => 'Новини про продукт',
        'OTRS News' => 'Новини OTRS',
        '7 Day Stats' => 'Статистика за 7 днів',
        'Process Management information from database is not in sync with the system configuration, please synchronize all processes.' =>
            'Інформація керування процесами з бази даних не синхронізована з конфігурацією системи, будь ласка, синхронізуйте усі процеси.',
        'Package not verified by the OTRS Group! It is recommended not to use this package.' =>
            'Пакет не верифіковано OTRS Group! Рекомендовано не використовувати цей пакет.',
        '<br>If you continue to install this package, the following issues may occur!<br><br>&nbsp;-Security problems<br>&nbsp;-Stability problems<br>&nbsp;-Performance problems<br><br>Please note that issues that are caused by working with this package are not covered by OTRS service contracts!<br><br>' =>
            '<br>Якщо Ви продовжите встановлення цього пакета, можуть статися проблеми!<br><br>&nbsp;— Проблеми безпеки<br>&nbsp;— Проблеми стабільності<br>&nbsp;— Проблеми роботи<br><br>Будь ласка, зауважте, що ці проблеми, викликані роботою з цим пакетом, не покриваються котрактами обслуговування OTRS!<br><br>',
        'Mark' => 'Позначити',
        'Unmark' => 'Зняти позначку',
        'Bold' => 'Напівжирний',
        'Italic' => 'Курсив',
        'Underline' => 'Підкреслений',
        'Font Color' => 'Колір тексту',
        'Background Color' => 'Колір тла',
        'Remove Formatting' => 'Вилучити форматування',
        'Show/Hide Hidden Elements' => 'Показ схованих елементів',
        'Align Left' => ' По лівому краю',
        'Align Center' => ' По центру',
        'Align Right' => ' По правому краю',
        'Justify' => ' По ширині',
        'Header' => 'Заголовок',
        'Indent' => 'Збільшити відступ',
        'Outdent' => 'Зменшити відступ',
        'Create an Unordered List' => 'Створити ненумерований список',
        'Create an Ordered List' => 'Створити нумерований список',
        'HTML Link' => 'Посилання HTML',
        'Insert Image' => 'Вставити зображення',
        'CTRL' => 'Ctrl',
        'SHIFT' => 'Shift',
        'Undo' => 'Скасувати',
        'Redo' => 'Повторити',
        'OTRS Daemon is not running.' => 'OTRS Daemon не працює.',
        'Can\'t contact registration server. Please try again later.' => 'Не вдалося зв\'язатися з сервером реєстрації. Будь ласка, спробуйте пізніше.',
        'No content received from registration server. Please try again later.' =>
            'Не отримано вмісту від сервера реєстрації. Будь ласка, спробуйте пізніше.',
        'Problems processing server result. Please try again later.' => 'Проблеми з обробкою результатів сервера. Будь ласка, спробуйте пізніше.',
        'Username and password do not match. Please try again.' => 'Ім\'я користувача і пароль не співпадають. Будь ласка, спробуйте ще раз.',
        'The selected process is invalid!' => 'Обраний процес недійсний!',
        'Upgrade to %s now!' => 'Оновіть до %s зараз!',
        '%s Go to the upgrade center %s' => '%s Перейти до центру оновлення %s',
        'The license for your %s is about to expire. Please make contact with %s to renew your contract!' =>
            'Ліцензія для Вашого %s скоро закінчиться. Будь ласка, зв\'яжіться з %s, щоб поновити свій контракт!',
        'An update for your %s is available, but there is a conflict with your framework version! Please update your framework first!' =>
            'Доступне оновлення для Вашого %s, але існує конфлікт з Вашою версією фреймворку Будь ласка, оновіть спершу свій фреймворк!',
        'Your system was successfully upgraded to %s.' => 'Вашу систему було успішно оновлено до %s.',
        'There was a problem during the upgrade to %s.' => 'Сталася проблема під час оновлення до %s.',
        '%s was correctly reinstalled.' => '%s було коректно перевстановлено.',
        'There was a problem reinstalling %s.' => 'Сталася проблема з перевстановленням %s.',
        'Your %s was successfully updated.' => 'Ваш %s було успішно оновлено.',
        'There was a problem during the upgrade of %s.' => 'Сталася проблема під час оновлення %s.',
        '%s was correctly uninstalled.' => '%s було коректно деінстальовано.',
        'There was a problem uninstalling %s.' => 'Сталася проблема з деінсталюванням %s.',
        'Enable cloud services to unleash all OTRS features!' => 'Ввімкніть хмарні сервіси щоб розкрити усі можливості OTRS!',

        # Template: AAACalendar
        'New Year\'s Day' => 'Новий рік',
        'International Workers\' Day' => 'Міжнародний день трудящих',
        'Christmas Eve' => 'Переддень Різдва',
        'First Christmas Day' => 'Різдво',
        'Second Christmas Day' => 'Другий день Різдва',
        'New Year\'s Eve' => 'Переддень Нового року',

        # Template: AAAGenericInterface
        'OTRS as requester' => 'OTRS як подавач запиту',
        'OTRS as provider' => 'OTRS як провайдер',
        'Webservice "%s" created!' => 'Веб-сервіс «%s» створено!',
        'Webservice "%s" updated!' => 'Веб-сервіс «%s» оновлено!',

        # Template: AAAMonth
        'Jan' => 'Січ.',
        'Feb' => 'Лют.',
        'Mar' => 'Бер.',
        'Apr' => 'Квіт.',
        'May' => 'Трав.',
        'Jun' => 'Черв.',
        'Jul' => 'Лип.',
        'Aug' => 'Серп.',
        'Sep' => 'Вер.',
        'Oct' => 'Жовт.',
        'Nov' => 'Лист.',
        'Dec' => 'Груд.',
        'January' => 'Січень',
        'February' => 'Лютий',
        'March' => 'Березень',
        'April' => 'Квітень',
        'May_long' => 'Травень',
        'June' => 'Червень',
        'July' => 'Липень',
        'August' => 'Серпень',
        'September' => 'Вересень',
        'October' => 'Жовтень',
        'November' => 'Листопад',
        'December' => 'Грудень',

        # Template: AAAPreferences
        'Preferences updated successfully!' => 'Налаштуваня успішно оновлені!',
        'User Profile' => 'Профіль користувача',
        'Email Settings' => 'Налаштування пошти',
        'Other Settings' => 'Інші налаштування',
        'Notification Settings' => 'Налаштування сповіщень',
        'Change Password' => 'Змінити пароль',
        'Current password' => 'Поточний пароль',
        'New password' => 'Новий пароль',
        'Verify password' => 'Повторіть пароль',
        'Spelling Dictionary' => 'Орфографічний словник',
        'Default spelling dictionary' => 'Орфографічний словник за замовчуванням',
        'Max. shown Tickets a page in Overview.' => 'Максимальна кількість заявок при показі черги',
        'The current password is not correct. Please try again!' => 'Пароль неправильний. Будь ласка, спробуйте знову!',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            'Неможливо оновити пароль. Нові паролі не збігаються. Будь ласка, спробуйте знову!',
        'Can\'t update password, it contains invalid characters!' => 'Неможливо оновити пароль, тому що він містить заборонені символи!',
        'Can\'t update password, it must be at least %s characters long!' =>
            'Неможливо оновити пароль, тому що його довжина повинна бути не менше %s символів!',
        'Can\'t update password, it must contain at least 2 lowercase and 2 uppercase characters!' =>
            'Неможливо оновити пароль, тому що він повинен містити не менше 2-х символів нижнього і 2-х символів верхнього регістру!',
        'Can\'t update password, it must contain at least 1 digit!' => 'Неможливо оновити пароль, тому що він повинен містити не менше 1-ї цифри!',
        'Can\'t update password, it must contain at least 2 characters!' =>
            'Неможливо оновити пароль, тому що він повинен містити не менше 2 символів!',
        'Can\'t update password, this password has already been used. Please choose a new one!' =>
            'Неможливо оновити пароль, тому що він уже використовувався. Будь ласка, оберіть новий.',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            'Оберіть символ розділювача, що використовується у файлах CSV (статистика і пошук). Якщо не оберете розділювач тут, то використовуватиметься стандартний розділювач для Вашої мови.',
        'CSV Separator' => 'Роздільник CSV',

        # Template: AAATicket
        'Status View' => 'Перегляд статусу',
        'Service View' => 'Перегляд сервісу',
        'Bulk' => 'Масово',
        'Lock' => 'Блокувати',
        'Unlock' => 'Розблокувати',
        'History' => 'Історія',
        'Zoom' => 'Докладно',
        'Age' => 'Відкрита',
        'Bounce' => 'Повернути',
        'Forward' => 'Переслати',
        'From' => 'Від кого',
        'To' => 'Кому',
        'Cc' => 'Копія',
        'Bcc' => 'Прихована копія',
        'Subject' => 'Тема',
        'Move' => 'Перемістити',
        'Queue' => 'Черга',
        'Queues' => 'Черги',
        'Priority' => 'Пріоритет',
        'Priorities' => 'Пріоритети',
        'Priority Update' => 'Зміна пріоритету',
        'Priority added!' => 'Пріоритет додано!',
        'Priority updated!' => 'Пріоритет оновлено!',
        'Signature added!' => 'Підпис додано!',
        'Signature updated!' => 'Підпис оновлено!',
        'SLA' => 'Рівень обслуговування',
        'Service Level Agreement' => 'Угода про рівень сервісу',
        'Service Level Agreements' => 'Угоди про рівень сервісу',
        'Service' => 'Сервіс',
        'Services' => 'Сервіси',
        'State' => 'Стан',
        'States' => 'Стани',
        'Status' => 'Статус',
        'Statuses' => 'Статуси',
        'Ticket Type' => 'Тип заявки',
        'Ticket Types' => 'Типи заявок',
        'Compose' => 'Створити',
        'Pending' => 'Відкладені',
        'Owner' => 'Власник',
        'Owner Update' => 'Новий власник',
        'Responsible' => 'Відповідальний',
        'Responsible Update' => 'Новий відповідальний',
        'Sender' => 'Відправник',
        'Article' => 'Повідомлення',
        'Ticket' => 'Заявка',
        'Createtime' => 'Час створення',
        'plain' => 'звичайний',
        'Email' => 'Email',
        'email' => 'email',
        'Close' => 'Закрити',
        'Action' => 'Дія',
        'Attachment' => 'Прикріплення',
        'Attachments' => 'Прикріплення',
        'This message was written in a character set other than your own.' =>
            'Це повідомлення написане в кодуванні, відмінному від Вашого.',
        'If it is not displayed correctly,' => 'Якщо текст відображається некоректно,',
        'This is a' => 'Це',
        'to open it in a new window.' => 'відкрити в новому вікні.',
        'This is a HTML email. Click here to show it.' => 'Це електронний лист у форматі HTML. Натисніть тут для перегляду',
        'Free Fields' => 'Вільні поля',
        'Merge' => 'Об\'єднати',
        'merged' => 'об\'єднано',
        'closed successful' => 'закрито успішно',
        'closed unsuccessful' => 'закрито неуспішно',
        'Locked Tickets Total' => 'Блоковані заявки всі',
        'Locked Tickets Reminder Reached' => 'Блоковані заявки з нагадуванням',
        'Locked Tickets New' => 'Блоковані заявки нові',
        'Responsible Tickets Total' => 'Відповідальні заявки всі',
        'Responsible Tickets New' => 'Відповідальні заявки нові',
        'Responsible Tickets Reminder Reached' => 'Відповідальні заявки з нагадуванням',
        'Watched Tickets Total' => 'Спостережувані заявки всі',
        'Watched Tickets New' => 'Спостережувані заявки нові',
        'Watched Tickets Reminder Reached' => 'Спостережувані заявки з нагадуванням',
        'All tickets' => 'Усі заявки',
        'Available tickets' => 'Доступні заявки',
        'Escalation' => 'Загострення',
        'last-search' => 'останній пошук',
        'QueueView' => 'Перегляд черги',
        'Ticket Escalation View' => 'Вид загостреної заявки',
        'Message from' => 'Повідомлення від',
        'End message' => 'Кінець повідомлення',
        'Forwarded message from' => 'Переслане повідомлення від',
        'End forwarded message' => 'Кінець пересланого повідомлення',
        'Bounce Article to a different mail address' => 'Переслати повідомлення на іншу електронну адресу',
        'Reply to note' => 'Відповісти на нотатку',
        'new' => 'нова',
        'open' => 'відкриті',
        'Open' => 'Відкриті',
        'Open tickets' => 'Відкриті заявки',
        'closed' => 'закриті',
        'Closed' => 'Закриті',
        'Closed tickets' => 'Закриті заявки',
        'removed' => 'вилучені',
        'pending reminder' => 'відкладене нагадування',
        'pending auto' => 'чекає на авто',
        'pending auto close+' => 'чекає на автозакриття+',
        'pending auto close-' => 'чекає на автозакриття-',
        'email-external' => 'зовнішній email',
        'email-internal' => 'внутрішній email',
        'note-external' => 'зовнішня замітка',
        'note-internal' => 'внутрішня замітка',
        'note-report' => ' замітка-звіт',
        'phone' => 'дзвінок',
        'sms' => 'SMS',
        'webrequest' => 'веб-заявка',
        'lock' => 'блокована',
        'unlock' => 'розблокована',
        'very low' => ' найнижчий',
        'low' => 'низький',
        'normal' => 'звичайний',
        'high' => 'високий',
        'very high' => 'невідкладний',
        '1 very low' => '1 найнижчий',
        '2 low' => '2 низький',
        '3 normal' => '3 звичайний',
        '4 high' => '4 високий',
        '5 very high' => '5 невідкладний',
        'auto follow up' => 'автослідування',
        'auto reject' => 'автовідхилення',
        'auto remove' => 'автовилучення',
        'auto reply' => 'автовідповідь',
        'auto reply/new ticket' => 'автовідповідь/нова заявка',
        'Create' => 'Створити',
        'Answer' => 'Відповісти',
        'Phone call' => 'Телефонний дзвінок',
        'Ticket "%s" created!' => 'Створена заявка «%s».',
        'Ticket Number' => 'Номер заявки',
        'Ticket Object' => 'Об\'єкт заявки',
        'No such Ticket Number "%s"! Can\'t link it!' => 'Заявки з номером «%s» не існує, неможливо зв\'язати з нею!',
        'You don\'t have write access to this ticket.' => 'У Вас немає доступу запису до цієї заявки.',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            'Вибачте, Ви маєте бути власником заявки, щоб виконати цю дію.',
        'Please change the owner first.' => 'Будь ласка, змініть спочатку власника.',
        'Ticket selected.' => 'Заявку обрано.',
        'Ticket is locked by another agent.' => 'Заявка заблокована іншим агентом.',
        'Ticket locked.' => 'Заявка заблокована.',
        'Don\'t show closed Tickets' => 'Не показувати закриті заявки',
        'Show closed Tickets' => 'Показувати закриті заявки',
        'New Article' => 'Нове повідомлення',
        'Unread article(s) available' => 'Доступні непрочитані статті',
        'Remove from list of watched tickets' => 'Вилучити зі списку спостережуваних заявок',
        'Add to list of watched tickets' => 'Додати до списку спостережуваних заявок',
        'Email-Ticket' => 'Лист',
        'Create new Email Ticket' => 'Створити нову заявку',
        'Phone-Ticket' => 'Заявка — телефонний дзвінок',
        'Search Tickets' => 'Пошук заявок',
        'Customer Realname' => 'Справжнє ім\'я клієнта',
        'Customer History' => 'Історія клієнта',
        'Edit Customer Users' => 'Редагувати клієнтів',
        'Edit Customer' => 'Редагувати клієнта',
        'Bulk Action' => 'Масова дія',
        'Bulk Actions on Tickets' => 'Масова дія над заявками',
        'Send Email and create a new Ticket' => 'Відправити лист і створити нову заявку',
        'Create new Email Ticket and send this out (Outbound)' => 'Створити нову заявку email і відправити її',
        'Create new Phone Ticket (Inbound)' => 'Створити нову телефонну заявку',
        'Address %s replaced with registered customer address.' => 'Адресу %s замінено на зареєстровану адресу клієнта.',
        'Customer user automatically added in Cc.' => 'Користувача-клієнта автоматично додано на копію.',
        'Overview of all open Tickets' => 'Огляд усіх відкритих заявок',
        'Locked Tickets' => 'Заблоковані заявки',
        'My Locked Tickets' => 'Мої заблоковані заявки',
        'My Watched Tickets' => 'Мої спостережувані заявки',
        'My Responsible Tickets' => 'Мої відповідальні заявки',
        'Watched Tickets' => 'Спостережувані заявки',
        'Watched' => 'Спостережувані',
        'Watch' => 'Спостерігати',
        'Unwatch' => 'Перестати спостерігати',
        'Lock it to work on it' => 'Заблокувати, щоб працювати над цим',
        'Unlock to give it back to the queue' => 'Розблокувати, щоб повернути у чергу',
        'Show the ticket history' => 'Показати історію заявки',
        'Print this ticket' => 'Роздрукувати цю заявку',
        'Print this article' => 'Роздрукувати це повідомлення',
        'Split' => 'Розділити',
        'Split this article' => 'Розділити цю статтю',
        'Forward article via mail' => 'Переслати повідомлення електронною поштою',
        'Change the ticket priority' => 'Змінити пріоритет заявки',
        'Change the ticket free fields!' => 'Змінити вільні поля заявки!',
        'Link this ticket to other objects' => 'Зв\'язати заявку з іншими об\'єктами',
        'Change the owner for this ticket' => 'Змінити власника цієї заявки',
        'Change the  customer for this ticket' => 'Змінити клієнта цієї заявки',
        'Add a note to this ticket' => 'Додати нотатку до цієї заявки',
        'Merge into a different ticket' => 'Об\'єднати з іншою заявкою',
        'Set this ticket to pending' => 'Позначити цю заявку як «в очікуванні»',
        'Close this ticket' => 'Закрити цю заявку',
        'Look into a ticket!' => 'Переглянути заявку!',
        'Delete this ticket' => 'Вилучити цю заявку',
        'Mark as Spam!' => 'Позначити як спам!',
        'My Queues' => 'Мої черги',
        'Shown Tickets' => 'Показувані заявки',
        'Shown Columns' => 'Показані колонки',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            'Ваш email з номером заявки «<OTRS_TICKET>» об\'єднаний з "<OTRS_MERGE_TO_TICKET>".',
        'Ticket %s: first response time is over (%s)!' => 'Заявка %s: час першої відповіді минув (%s)!',
        'Ticket %s: first response time will be over in %s!' => 'Заявка %s: час першої відповіді мине через %s!',
        'Ticket %s: update time is over (%s)!' => 'Заявка %s: час відновлення заявки минув (%s)!',
        'Ticket %s: update time will be over in %s!' => 'Заявка %s: час відновлення заявки мине через %s!',
        'Ticket %s: solution time is over (%s)!' => 'Заявка %s: час розв\'язку заявки минув (%s)!',
        'Ticket %s: solution time will be over in %s!' => 'Заявка %s: час розв\'язку заявки мине через %s!',
        'There are more escalated tickets!' => 'Заявок з загостренням більше немає!',
        'Plain Format' => 'Простий формат',
        'Reply All' => 'Відповісти всім',
        'Direction' => 'Напрямок',
        'New ticket notification' => 'Сповіщення про нову заявку',
        'Send me a notification if there is a new ticket in "My Queues".' =>
            'Надсилати мені сповіщення, якщо у «Моїх чергах» є нова заявка.',
        'Send new ticket notifications' => 'Надсилати сповіщення про нові заявки',
        'Ticket follow up notification' => 'Сповіщення про слідкування за заявкою',
        'Send me a notification if a customer sends a follow up and I\'m the owner of the ticket or the ticket is unlocked and is in one of my subscribed queues.' =>
            'Надсилати мені сповіщення, якщо клієнт додає інших отримувачів листів, і я є власником заявки або заявка розблокована і знаходиться в одній з моїх черг.',
        'Send ticket follow up notifications' => 'Надсилати сповіщення про нових адресатів',
        'Ticket lock timeout notification' => 'Повідомлення про закічнення строку блокування заявки',
        'Send me a notification if a ticket is unlocked by the system.' =>
            'Надслати мені сповіщення, якщо заявка розблокована системою.',
        'Send ticket lock timeout notifications' => 'Надсилати сповіщення про розблокування заявки',
        'Ticket move notification' => 'Сповіщення про переміщення заявки',
        'Send me a notification if a ticket is moved into one of "My Queues".' =>
            'Надсилати мені сповіщення, якщо заявка переміщена в одну з моїх черг.',
        'Send ticket move notifications' => 'Надсилати сповіщення про переміщення заявки',
        'Your queue selection of your favourite queues. You also get notified about those queues via email if enabled.' =>
            'Вибір черг, які Вас цікавлять. Ви також отримуєте сповіщення про ці черги електронною поштою, якщо ця функція увімкнена.',
        'Custom Queue' => 'Власна черга',
        'QueueView refresh time' => 'Час оновлення перегляду черги',
        'If enabled, the QueueView will automatically refresh after the specified time.' =>
            'Якщо увімкнено, перегляд черги автоматично оновлюватиметься через вказаний час.',
        'Refresh QueueView after' => 'Оновити перегляд черги через',
        'Screen after new ticket' => 'Розділ після створення нової заявки',
        'Show this screen after I created a new ticket' => 'Показувати це після створення мною нової заявки',
        'Closed Tickets' => 'Закриті заявки',
        'Show closed tickets.' => 'Показувати закриті заявки',
        'Max. shown Tickets a page in QueueView.' => 'Максимальна кількість заявок при перегляді черги.',
        'Ticket Overview "Small" Limit' => 'Ліміт заявок при «Малому» перегляді',
        'Ticket limit per page for Ticket Overview "Small"' => 'Кількість заявок на сторінці при «Малому» режимі перегляду заявок',
        'Ticket Overview "Medium" Limit' => 'Ліміт заявок при «Середньому» перегляді',
        'Ticket limit per page for Ticket Overview "Medium"' => 'Кількість заявок на сторінці при «Середньому» режимі перегляду заявок',
        'Ticket Overview "Preview" Limit' => 'Ліміт заявок при «Попередньому» перегляді',
        'Ticket limit per page for Ticket Overview "Preview"' => 'Кількість заявок на сторінці при «Попередньому» режимі перегляду заявок',
        'Ticket watch notification' => 'Сповіщення про спостережувані заявки',
        'Send me the same notifications for my watched tickets that the ticket owners will get.' =>
            'Надсилати мені такі ж сповіщення про мої спостережувані заявки, що й власнику заявки.',
        'Send ticket watch notifications' => 'Надсилати сповіщення про спостережувані заявки',
        'Out Of Office Time' => 'Час «Не при справах»',
        'New Ticket' => 'Нова заявка',
        'Create new Ticket' => 'Створити нову заявку',
        'Customer called' => 'Дзвінок клієнта',
        'phone call' => 'телефонний дзвінок',
        'Phone Call Outbound' => 'Вихідний телефонний дзвінок',
        'Phone Call Inbound' => 'Вхідний телефонний дзвінок',
        'Reminder Reached' => 'Нагадування',
        'Reminder Tickets' => 'Заявки з нагадуванням',
        'Escalated Tickets' => 'Заявки з загостренням',
        'New Tickets' => 'Нові заявки',
        'Open Tickets / Need to be answered' => 'Відкриті заявки / Потрібно відповісти',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            'Усі відкриті заявки, над цими заявками уже працювали, але вони потребують відповіді',
        'All new tickets, these tickets have not been worked on yet' => 'Усі відкриті заявки, над цими заявками ще не працювали',
        'All escalated tickets' => 'Усі заявки з загостренням',
        'All tickets with a reminder set where the reminder date has been reached' =>
            'Усі заявки з встановленим нагадуванням, що досягнуто дати нагадування',
        'Archived tickets' => 'Архівовані заявки',
        'Unarchived tickets' => 'Неархівовані заявки',
        'Ticket Information' => 'Інформація про заявку',
        'including subqueues' => 'із підчергами',
        'excluding subqueues' => 'без підчерг',

        # Template: AAAWeekDay
        'Sun' => 'Нд',
        'Mon' => 'Пн',
        'Tue' => 'Вт',
        'Wed' => 'Ср',
        'Thu' => 'Чт',
        'Fri' => 'Пт',
        'Sat' => 'Сб',

        # Template: AdminACL
        'ACL Management' => 'Керування ACL',
        'Filter for ACLs' => 'Фільтри для ACL',
        'Filter' => 'Фільтр',
        'ACL Name' => 'Назва ACL',
        'Actions' => 'Дії',
        'Create New ACL' => 'Створити новий ACL',
        'Deploy ACLs' => 'Розгорнути ACL-и',
        'Export ACLs' => 'Експортувати ACL-и',
        'Configuration import' => 'Імпорт конфігурацій',
        'Here you can upload a configuration file to import ACLs to your system. The file needs to be in .yml format as exported by the ACL editor module.' =>
            'Тут Ви можете завантажити файл конфігурації для імпорту ACL-ів у свою ситстему. Файл має бути у форматі .yml, як його експортував модуль редагування ACL.',
        'This field is required.' => 'Це обов\'язкове поле.',
        'Overwrite existing ACLs?' => 'Перезаписати наявні ACL-и?',
        'Upload ACL configuration' => 'Завантажити конфігурацію ACL',
        'Import ACL configuration(s)' => 'Імпортувати конфігурацію(-ї) ACL',
        'To create a new ACL you can either import ACLs which were exported from another system or create a complete new one.' =>
            'Щоб створити новий ACL, Ви можете або імпортувати ACL-и, які було експортовано з іншої системи, або створити цілком новий.',
        'Changes to the ACLs here only affect the behavior of the system, if you deploy the ACL data afterwards. By deploying the ACL data, the newly made changes will be written to the configuration.' =>
            'Зміни до ACL-ів тут впливають на поведінку системи, лише якщо Ви зрешою розгортаєте дані ACL. При розгортанні даних ACL новозроблені зміни будуть записані у конфігурацію.',
        'ACLs' => 'ACL-и',
        'Please note: This table represents the execution order of the ACLs. If you need to change the order in which ACLs are executed, please change the names of the affected ACLs.' =>
            'Будь ласка, зауважте: Ця таблиця відображає порядок виконання ACL-ів. Якщо Вам треба змінити порядок, у якому виконуються ACL-и, будь ласка, змініть назви відповідних ACL-ів.',
        'ACL name' => 'Назва ACL',
        'Validity' => 'Дійсність',
        'Copy' => 'Копіювати',
        'No data found.' => 'Дані не знайдені.',

        # Template: AdminACLEdit
        'Edit ACL %s' => 'Редагувати ACL %s',
        'Go to overview' => 'Перейти до перегляду',
        'Delete ACL' => 'Вилучити ACL',
        'Delete Invalid ACL' => 'Вилучити недійсний ACL',
        'Match settings' => 'Налаштування співпадання',
        'Set up matching criteria for this ACL. Use \'Properties\' to match the current screen or \'PropertiesDatabase\' to match attributes of the current ticket that are in the database.' =>
            'Встановіть налаштування співпадання для цього ACL. Скористайтеся «Налаштуваннями», щоб поточний екран чи «PropertiesDatabase» співпадали з атрибутами поточної заявки, які є у базі даних.',
        'Change settings' => 'Змінити налаштування',
        'Set up what you want to change if the criteria match. Keep in mind that \'Possible\' is a white list, \'PossibleNot\' a black list.' =>
            'Установіть що Ви хочете змінити, якщо є відповідність критеріям. Майте на увазі, що «Можливо» — білий список, «Не можливо» — чорний список.',
        'Check the official' => 'Перевірте офіційну',
        'documentation' => 'документацію',
        'Show or hide the content' => 'Відобразити або сховати вміст',
        'Edit ACL information' => 'Редагувати інформацію ACL',
        'Stop after match' => 'Припинити перевірку після збігу',
        'Edit ACL structure' => 'Редагувати структуру ACL',
        'Save settings' => 'Зберегти налаштування',
        'Save ACL' => 'Зберегти ACL',
        'Save' => 'Зберегти',
        'or' => 'або',
        'Save and finish' => 'Зберегти та завершити',
        'Do you really want to delete this ACL?' => 'Ви дійсно хочете вилучити цей ACL?',
        'This item still contains sub items. Are you sure you want to remove this item including its sub items?' =>
            'Цей елемент містить піделементи. Ви дійсно хочете вилучити цей елемент включно з його піделементами?',
        'An item with this name is already present.' => 'Елемент з таким іменем вже існує.',
        'Add all' => 'Додати всі',
        'There was an error reading the ACL data.' => 'Сталась помилка під час зчитування даних ACL.',

        # Template: AdminACLNew
        'Create a new ACL by submitting the form data. After creating the ACL, you will be able to add configuration items in edit mode.' =>
            'Створити новий ACL шляхом надсилання даних формою. Після створення цього ACL, Ви зможете додати елементи налаштування у режимі редагування.',

        # Template: AdminAttachment
        'Attachment Management' => 'Керування прикріпленими файлами',
        'Add attachment' => 'Додати прикріплення',
        'List' => 'Список',
        'Download file' => 'Завантажити файл',
        'Delete this attachment' => 'Вилучити це вкладення',
        'Do you really want to delete this attachment?' => 'Ви насправді хочете вилучити це долучення?',
        'Add Attachment' => 'Додати вкладення',
        'Edit Attachment' => 'Редагувати вкладення',

        # Template: AdminAutoResponse
        'Auto Response Management' => 'Керування автовідповідями',
        'Add auto response' => 'Додати автовідповідь',
        'Add Auto Response' => 'Додати автовідповідь',
        'Edit Auto Response' => 'Змінити автовідповідь',
        'Response' => 'Відповідь',
        'Auto response from' => 'Автовідповідь від',
        'Reference' => 'Посилання',
        'You can use the following tags' => 'Ви можете використовувати наступні теги',
        'To get the first 20 character of the subject.' => 'Щоб бачити перші 20 символів теми',
        'To get the first 5 lines of the email.' => 'Щоб бачити перші 5 рядків email',
        'To get the name of the ticket\'s customer user (if given).' => 'Для того, щоб отримати ім\'я користувача клієнтського квитка (якщо воно є).',
        'To get the article attribute' => 'Отримати атрибути статті',
        ' e. g.' => ' наприклад,',
        'Options of the current customer user data' => 'Персональні опції клієнта',
        'Ticket owner options' => 'Опції власника заявки',
        'Ticket responsible options' => 'Опції відповідального на заявку',
        'Options of the current user who requested this action' => 'Опції поточного користувача до відповів на подію',
        'Options of the ticket data' => 'Опції інформації заявки',
        'Options of ticket dynamic fields internal key values' => 'Опції значень внутрішніх ключів динамічних полів заявки',
        'Options of ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            'Опції значень динамічних полів заявки, корисні для полів-випадних меню та з підтримкою багатьох варіантів вибору.',
        'Config options' => 'Налаштування опцій',
        'Example response' => 'Приклад відповіді',

        # Template: AdminCloudServiceSupportDataCollector
        'Cloud Service Management' => 'Керування хмарним сервісом',
        'Support Data Collector' => 'Збір даних підтримки',
        'Support data collector' => 'Збір даних підтримки',
        'Hint' => 'Підказка',
        'Currently support data is only shown in this system.' => 'Наразі дані підтримки показуються лише у цій системі',
        'It is highly recommended to send this data to OTRS Group in order to get better support.' =>
            'Дуже рекомендується надіслати ці дані до групи OTRS з метою отримати кращу підтримку.',
        'Configuration' => 'Налаштування',
        'Send support data' => 'Надсилати дані підтримки',
        'This will allow the system to send additional support data information to OTRS Group.' =>
            'Це дозволить системі надсилати додаткову інформацію даних підтримки до групи OTRS.',
        'System Registration' => 'Реєстрація системи',
        'To enable data sending, please register your system with OTRS Group or update your system registration information (make sure to activate the \'send support data\' option.)' =>
            'Щоб увімкнути надсилання, будь ласка, зареєструйте Вашу систему у групі OTRS, або оновіть Вашу інформацію реєстрації системи (переконайтесь, що опцію «надсилати дані підтримки» активовано).',
        'Register this System' => 'Зареєструвати цю систему',
        'System Registration is disabled for your system. Please check your configuration.' =>
            'Реєстрація системи вимкнена у Вашій системі. Будь ласка, перевірте Ваші налаштування.',

        # Template: AdminCloudServices
        'System registration is a service of OTRS Group, which provides a lot of advantages!' =>
            'Реєстрація системи — це сервіс групи OTRS, який надає багато переваг!',
        'Please note that the use of OTRS cloud services requires the system to be registered.' =>
            'Будь ласка, зауважте, що використання хмарних сервісів OTRS вимагає, щоб систему було зареєстровано.',
        'Register this system' => 'Зареєструвати цю систему.',
        'Here you can configure available cloud services that communicate securely with %s.' =>
            'Тут Ви можете налаштувати наявні хмарні сервіси, що захищено комунікують з ',
        'Available Cloud Services' => 'Доступні хмарні сервіси',
        'Upgrade to %s' => 'Оновити до %s',

        # Template: AdminCustomerCompany
        'Customer Management' => 'Керування клієнтами',
        'Wildcards like \'*\' are allowed.' => 'Підстановочні символи як-то «*» є дозволеними.',
        'Add customer' => 'Додати клієнта',
        'Select' => 'Вибір',
        'List (only %s shown - more available)' => 'тільки %s показано - більше варіантів',
        'List (%s total)' => 'Список (%s всього)',
        'Please enter a search term to look for customers.' => ' Будь ласка, уведіть пошукове вираження для пошуку клієнтів.',
        'Add Customer' => 'Додати Клієнта',

        # Template: AdminCustomerUser
        'Customer User Management' => 'Керування користувачами-клієнтами',
        'Back to search results' => 'Повернутись до результатів пошуку',
        'Add customer user' => 'Додати користувача-клієнта',
        'Customer user are needed to have a customer history and to login via customer panel.' =>
            'Користувачі-клієнти необхідні для того, щоб мати історію клієнта, а також для входу через панель клієнта.',
        'Last Login' => 'Останній вхід',
        'Login as' => 'Увійти як',
        'Switch to customer' => 'Перемкнутись на клієнта',
        'Add Customer User' => 'Додати користувача-клієнта',
        'Edit Customer User' => 'Редагувати користувача-клієнта',
        'This field is required and needs to be a valid email address.' =>
            'Це поле є обов\'язковим і повинно бути дійсною адресою електронної пошти',
        'This email address is not allowed due to the system configuration.' =>
            'Ця адреса електронної пошти не дозволена через системні налаштування',
        'This email address failed MX check.' => 'Ця адреса електронної пошти не змогла пройти перевірку MX.',
        'DNS problem, please check your configuration and the error log.' =>
            'Проблема DNS, будь ласка, перевірте Ваші налаштування та журнал помилок.',
        'The syntax of this email address is incorrect.' => 'Синтаксис цієї адреси електронної пошти є неправильним.',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => 'Керувати відносини клієнт—група',
        'Notice' => 'Сповіщення',
        'This feature is disabled!' => 'Цю функцію вимкнено!',
        'Just use this feature if you want to define group permissions for customers.' =>
            'Використовуйте цю функцію лише якщо Ви хочете визначити групові права для клієнтів.',
        'Enable it here!' => 'Увімкніть це тут!',
        'Edit Customer Default Groups' => 'Редагувати групи клієнта за замовчуванням.',
        'These groups are automatically assigned to all customers.' => 'Ці групи автоматично призначаються усім клієнтам.',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            'Ви можете керувати цими групами за допомогою налаштування «CustomerGroupAlwaysGroups».',
        'Filter for Groups' => 'Фільтри для груп',
        'Just start typing to filter...' => 'Просто почніть друкувати для фільтрування…',
        'Select the customer:group permissions.' => 'Выбериет клієнта:дозволу для групи',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            'Якщо нічого не обрано, то у цієї групи немає прав (заявки не будуть доступними для клієнта).',
        'Search Results' => 'Результати пошуку',
        'Customers' => 'Клієнти',
        'No matches found.' => 'Збігів не знайдено.',
        'Groups' => 'Групи',
        'Change Group Relations for Customer' => 'Зміна привязки групи до Клієнта',
        'Change Customer Relations for Group' => 'Зміна привязки Клієнта до групи ',
        'Toggle %s Permission for all' => 'Застосувати %s для всіх',
        'Toggle %s permission for %s' => 'Застосувати %s повноваження для %s',
        'Customer Default Groups:' => 'Клієнтська група по-умовчанню:',
        'No changes can be made to these groups.' => 'Не можливо зробити зміни для цих груп',
        'ro' => 'Тільки читання',
        'Read only access to the ticket in this group/queue.' => 'Права тільки на читання заявки в даній групі/черги',
        'rw' => 'Читання/запис',
        'Full read and write access to the tickets in this group/queue.' =>
            'Повні права на заявки в даній групі/черги',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => 'Керувати звязками Клієнт-Сервіс',
        'Edit default services' => 'Редагувати сервіси по замовчуванню',
        'Filter for Services' => 'Фільтр для сервісів',
        'Allocate Services to Customer' => 'Привязати сервіси  до клієнта',
        'Allocate Customers to Service' => 'Привязати Клієнта до сервісу',
        'Toggle active state for all' => 'Встановити активний стан для всіх',
        'Active' => 'Активний',
        'Toggle active state for %s' => 'Встановити активний стан для %s',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => 'Керування динамічними полями',
        'Add new field for object' => 'Додати нове полк для обєкту',
        'To add a new field, select the field type from one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            'Для того, щоб додати нове поле, виберіть тип поля з наступного переліку об\'єктів, об\'єкт визначає зв\'язки поля та не може бути змінений після його створення.',
        'Dynamic Fields List' => 'Список динамічних полів',
        'Dynamic fields per page' => 'Кількість динамічних полів на сторінку',
        'Label' => 'Мітка',
        'Order' => 'Порядок',
        'Object' => 'Об\'єкт',
        'Delete this field' => 'Видалити це поле',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            'Ви насправді хочете видалити це динамічне поле? ВСІ асоційовані з ним дані буде ВТРАЧЕНО!',
        'Delete field' => 'Видалити поле',
        'Deleting the field and its data. This may take a while...' => 'Вилучення поля та його даних. Це може зайняти деякий час...',

        # Template: AdminDynamicFieldCheckbox
        'Dynamic Fields' => 'Динамічні поля',
        'Field' => 'Поле',
        'Go back to overview' => 'Повернутись до перегляду',
        'General' => 'Загалом',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            'Це поле є обовязкове, значення повинні бути лише літери чи цифри',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            'Повинне бути ункальним, значення повинні бути лише літери чи цифри',
        'Changing this value will require manual changes in the system.' =>
            'Зміна цього значення вимагає ручних змін в системі',
        'This is the name to be shown on the screens where the field is active.' =>
            'Імя, що буде відображатись на екрані, коли поле активне',
        'Field order' => 'Порядок поля',
        'This field is required and must be numeric.' => 'Це поле є обовязковим і повинне складатись з цифр',
        'This is the order in which this field will be shown on the screens where is active.' =>
            'Порядок в якому поля будуть відображатись на екрані коли активні',
        'Field type' => 'Тип поля',
        'Object type' => 'Тип обєкту',
        'Internal field' => 'Внутрішнє поле',
        'This field is protected and can\'t be deleted.' => 'Це поле захищене та не може бути вилучене.',
        'Field Settings' => 'Налаштування поля',
        'Default value' => 'Значення за замовчуванням',
        'This is the default value for this field.' => 'Це значення за замовчуванням для цього поля',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => 'Різниця дати за замовчуванням',
        'This field must be numeric.' => 'Це поле повинно бути цифровим',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            'Час для прорахунку (від зараз) значення поля за замовчуванням (приклад 3600 або -60)',
        'Define years period' => 'Визначіть рік',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            'Активація цієї опції визначає сталий перелік років (в майбутньому і минулому) для відображення в полі рік',
        'Years in the past' => 'Років тому',
        'Years in the past to display (default: 5 years).' => 'показувати років назад (за замовчуванням: 5 років)',
        'Years in the future' => 'Років в майбутньому',
        'Years in the future to display (default: 5 years).' => 'показувати років в майбутньому (за замовчуванням: 5 років)',
        'Show link' => 'Показати посилання',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            'Тут Ви можете визначити додатковий HTTP лінк для значення поля перегляд і розширений перегляд',
        'Link for preview' => 'Посилання для перегляду',
        'If filled in, this URL will be used for a preview which is shown when this link is hovered in ticket zoom. Please note that for this to work, the regular URL field above needs to be filled in, too.' =>
            'Якщо заповнені, це посилання буде використовуватися для попереднього перегляду у розширеному перегляді тікету.Зверніть увагу, що для цієї дії, регулярне поле посилання вище повинно бути заповнене також',
        'Restrict entering of dates' => 'Обмежеити введення дати',
        'Here you can restrict the entering of dates of tickets.' => 'Тут Ви можете обмежити введення дати тікету',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => 'Можливі значення',
        'Key' => 'Ключ',
        'Value' => 'Значення',
        'Remove value' => 'Вилучити значення',
        'Add value' => 'Додати значення',
        'Add Value' => 'Додати значення',
        'Add empty value' => 'Додати порожнє значення',
        'Activate this option to create an empty selectable value.' => 'Активувати цю опцію для створення порожнього значення, яке можна обрати',
        'Tree View' => 'Перегляд дерева',
        'Activate this option to display values as a tree.' => 'Активувати цю опцію для відображення значень у вигляді дерева.',
        'Translatable values' => 'Значення, що можна перекладати',
        'If you activate this option the values will be translated to the user defined language.' =>
            'Якщо Ви активуєте цю опцію, значення буде перекладено на мову визначену користувачем.',
        'Note' => 'Замітка',
        'You need to add the translations manually into the language translation files.' =>
            'Вам потрібно додати переклади вручну до файлів перекладу мови.',

        # Template: AdminDynamicFieldText
        'Number of rows' => 'Число рядків',
        'Specify the height (in lines) for this field in the edit mode.' =>
            'Вкажіть висоту (у рядках) цього поля у режимі редагування',
        'Number of cols' => 'Число колонок',
        'Specify the width (in characters) for this field in the edit mode.' =>
            'Вкажіть ширину (у символах) цього поля у режимі редагування.',
        'Check RegEx' => 'Перевірити регулярним виразом',
        'Here you can specify a regular expression to check the value. The regex will be executed with the modifiers xms.' =>
            'Тут Ви можете вказати регулярний вираз для перевірки значення. Регулярний вираз буде запущено з модифікаторами  xms.',
        'RegEx' => 'Регулярний вираз',
        'Invalid RegEx' => 'Неправильний регулярний вираз',
        'Error Message' => 'Повідомлення про помилку',
        'Add RegEx' => 'Додати регулярний вираз',

        # Template: AdminEmail
        'Admin Notification' => 'Повідомлення адміністратором',
        'With this module, administrators can send messages to agents, group or role members.' =>
            'За допомогою цього модуля, адміністратори можуть надсилати повідомлення до агентів, груп, або ролей членів.',
        'Create Administrative Message' => 'Створити адміністративне повідомлення',
        'Your message was sent to' => 'Ваше повідомлення було надіслано до',
        'Send message to users' => 'Надіслати повідомлення користувачам',
        'Send message to group members' => 'Надіслати повідомлення групі користувачів',
        'Group members need to have permission' => 'Члени групи повинні мати право',
        'Send message to role members' => 'Надіслати повідомлення членам ролі',
        'Also send to customers in groups' => 'Також надіслати клієнтам у групах',
        'Body' => 'Тіло листа',
        'Send' => 'Надіслати',

        # Template: AdminGenericAgent
        'Generic Agent' => 'Типовий агент',
        'Add job' => 'Додати завдання',
        'Last run' => 'Останній запуск',
        'Run Now!' => 'Виконати зараз!',
        'Delete this task' => 'Вилучити завдання',
        'Run this task' => 'Запустити завдання',
        'Do you really want to delete this task?' => 'Ви справді хочете видалити це завдання',
        'Job Settings' => 'Настроювання завдання',
        'Job name' => 'Ім\'я завдання',
        'The name you entered already exists.' => 'Ім\'я, що Ви ввели, вже існує.',
        'Toggle this widget' => 'Приховати цей віджет',
        'Automatic execution (multiple tickets)' => 'Автоматичний запуск (декілька заявок)',
        'Execution Schedule' => 'Графік запуску',
        'Schedule minutes' => 'Хвилини графіку',
        'Schedule hours' => 'Години графіку',
        'Schedule days' => 'Дні графіку',
        'Currently this generic agent job will not run automatically.' =>
            'Це завдання агента не запускається автоматично',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            ' Для автоматичного запуску вкажіть як мінімум одне зі значень у хвилинах, годиннику або днях',
        'Event based execution (single ticket)' => 'Запуск, що базується на події (для однієї заявки)',
        'Event Triggers' => 'Тригери події',
        'List of all configured events' => 'Список усіх налаштованих подій',
        'Delete this event' => 'Вилучити цю подію',
        'Additionally or alternatively to a periodic execution, you can define ticket events that will trigger this job.' =>
            'Додатково або альтернативно до періодичного запуску, Ви можете визначити події заявок, що будуть тригерами цього завдання.',
        'If a ticket event is fired, the ticket filter will be applied to check if the ticket matches. Only then the job is run on that ticket.' =>
            'Якщо сталась подія заявки, фільтр заявки буде застосовано для перевірки чи заявка співпадає. Лише тоді завдання буде запущено виконано для цієї заявки.',
        'Do you really want to delete this event trigger?' => 'Ви дійсно хочете вилучити цей тригер події?',
        'Add Event Trigger' => 'Додати тригер події',
        'Add Event' => 'Додати подію',
        'To add a new event select the event object and event name and click on the "+" button' =>
            'Щоб додати нову подію, вкажіть об\'єкт події та назву події, після чого натисніть кнопку «+»',
        'Duplicate event.' => 'Подія-дублікат.',
        'This event is already attached to the job, Please use a different one.' =>
            'Ця подія вже прикріплена до цього завдання, будь ласка, використайте іншу.',
        'Delete this Event Trigger' => 'Вилучити цей тригер події',
        'Remove selection' => 'Вилучити обране',
        'Select Tickets' => 'Обрати заявки',
        '(e. g. 10*5155 or 105658*)' => '(наприклад, 10*5155 або 105658*)',
        '(e. g. 234321)' => '(наприклад, 234321)',
        'Customer user' => 'Користувач клієнта',
        '(e. g. U5150)' => '(наприклад, U5150)',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => 'Повнотекстовий пошук статтею (наприклад, «Mar*in» чи «Baue*»).',
        'Agent' => 'Агент',
        'Ticket lock' => 'Блокування заявки',
        'Create times' => 'Часи створення',
        'No create time settings.' => ' Без обліку часу створення',
        'Ticket created' => 'Заявка створена',
        'Ticket created between' => 'Заявка створена між ',
        'Last changed times' => 'Час останньої зміни',
        'No last changed time settings.' => 'Не має часу змін налаштувань',
        'Ticket last changed' => 'Заявка змінена',
        'Ticket last changed between' => 'Заявка змінена між',
        'Change times' => 'Час зміни',
        'No change time settings.' => 'Не змінювати параметри часу',
        'Ticket changed' => 'Заявка змінена',
        'Ticket changed between' => 'Заявка змінена в період',
        'Close times' => 'Часів закриття',
        'No close time settings.' => ' Без обліку часу закриття',
        'Ticket closed' => 'Заявка закрита',
        'Ticket closed between' => 'Заявка закрита між',
        'Pending times' => 'Часів очікування',
        'No pending time settings.' => ' Без обліку часу, коли запит був відкладений',
        'Ticket pending time reached' => 'Заявка була відкладена',
        'Ticket pending time reached between' => 'Заявка була відкладена між',
        'Escalation times' => 'час ротермінування',
        'No escalation time settings.' => ' Без обліку часу ескалації',
        'Ticket escalation time reached' => 'Заявка була ескальована',
        'Ticket escalation time reached between' => 'Заявка була ескальована між',
        'Escalation - first response time' => 'Ескалація - час першої відповіді',
        'Ticket first response time reached' => 'Перша відповідь',
        'Ticket first response time reached between' => 'Перша відповідь між',
        'Escalation - update time' => 'Ескалація - час оновлення',
        'Ticket update time reached' => 'Заявка була оновлена',
        'Ticket update time reached between' => 'Заявка була оновлена між',
        'Escalation - solution time' => 'Ескалація - час вирішення',
        'Ticket solution time reached' => 'Заявка була вирішена',
        'Ticket solution time reached between' => 'Заявка була вирішена між',
        'Archive search option' => 'Опція пошуку архівом',
        'Update/Add Ticket Attributes' => 'Оновити/Додати атрибути заявки',
        'Set new service' => 'Установити новий сервіс',
        'Set new Service Level Agreement' => 'Установити нове погодження рівня сервісу',
        'Set new priority' => 'Установити новий пріоритет',
        'Set new queue' => 'Установити нову чергу',
        'Set new state' => 'Установити новий стан',
        'Pending date' => 'Дата очікування',
        'Set new agent' => 'Призначити нового агента',
        'new owner' => 'новий власник',
        'new responsible' => 'нова відповідь',
        'Set new ticket lock' => 'Встановити нове блокування заявки',
        'New customer user' => 'Новий користувас клієнта',
        'New customer ID' => 'ID нового клієнта',
        'New title' => 'Новий заголовок',
        'New type' => 'Новий тип',
        'New Dynamic Field Values' => 'Нові значення динамічного поля',
        'Archive selected tickets' => 'Заархівувати обрані заявки',
        'Add Note' => 'Додати замітку',
        'Time units' => 'Одиниці часу',
        'Execute Ticket Commands' => 'Виконати команди заявки',
        'Send agent/customer notifications on changes' => 'Відправляти повідомлення агентові при змінах',
        'CMD' => 'Команда',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            'Ця команда буде виконана. ARG[0] — номер заявки. ARG[1] — id заявки.',
        'Delete tickets' => 'Вилучити заявки',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            'Попередження: Усі обрані заявки будуть вилучені з бази даних без можливості відновлення!',
        'Execute Custom Module' => 'Виконати модуль користувача',
        'Param %s key' => 'Ключ параметра ',
        'Param %s value' => 'Значення параметра ',
        'Save Changes' => 'Зберегти зміни',
        'Results' => 'Результат',
        '%s Tickets affected! What do you want to do?' => 'Квитки %s ушкоджені. Що ви хочете робити далі?',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            'Увага: Ви використали опцію ВИЛУЧИТИ. Всі вилучені квитки буде втрачено!',
        'Warning: There are %s tickets affected but only %s may be modified during one job execution!' =>
            'Увага: є ушкоджені квитки %s але тільки %s можна змінити впродовж виконання одного завдання.',
        'Edit job' => 'Редагувати завдання',
        'Run job' => 'Запустити завдання',
        'Affected Tickets' => 'Обрані завдання',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => 'ЗагальноІнтерфейсний зневадник для веб-служб %s',
        'You are here' => 'Ви тут',
        'Web Services' => 'Веб сервіси',
        'Debugger' => 'Відладчик',
        'Go back to web service' => 'Повернутись до веб серівісів',
        'Clear' => 'Очистити',
        'Do you really want to clear the debug log of this web service?' =>
            'Ви дійсно бажаєте очистити лог відладки цього веб сервісу?',
        'Request List' => 'Необхідний перелік',
        'Time' => 'Час',
        'Remote IP' => 'Віддалений IP',
        'Loading' => 'Завантаження',
        'Select a single request to see its details.' => 'Обрати один запит для перегляду його деталей',
        'Filter by type' => 'Фільтрувати за типом',
        'Filter from' => 'Фільтрувати від',
        'Filter to' => 'Фільтрувати до',
        'Filter by remote IP' => 'Фільтрувати за віддаленим IP',
        'Limit' => 'Обмеження',
        'Refresh' => 'Обновити',
        'Request Details' => 'Деталі запиту',
        'An error occurred during communication.' => 'Виникла помилка під час звязку',
        'Show or hide the content.' => 'Відобразити чи приховати контент',
        'Clear debug log' => 'Очистити лог відладки',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => 'Додати нового активатора до веб-служби %s',
        'Change Invoker %s of Web Service %s' => 'Змінити активатор %s веб-служби %s',
        'Add new invoker' => 'Додати новий активатор',
        'Change invoker %s' => 'Змінити активатор %s',
        'Do you really want to delete this invoker?' => 'Ви справді бажаєте вилучити цей активатор?',
        'All configuration data will be lost.' => 'Всі конфігураційні дані будуть втрачені.',
        'Invoker Details' => 'Деталі активатора',
        'The name is typically used to call up an operation of a remote web service.' =>
            'Ім\'я, що типово використовується для виклику операцій віддаленої веб-служби.',
        'Please provide a unique name for this web service invoker.' => 'Будь ласка, задайте унікальне ім\'я для цього активатора веб-служби',
        'Invoker backend' => 'Нутрощі активатора',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            'Цей внутрішній модуль OTRS активатора буде викликаний щоб підготувати дані для відправки до віддаленої системи та обробляти дані її відповіді.',
        'Mapping for outgoing request data' => 'Відображення для даних вихідного запиту',
        'Configure' => 'Налаштувати',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            'Дані з активатора OTRS будуть оброблені цим відображенням, щоб перетворити їх до того вигляду даних, який очікує віддалена система.',
        'Mapping for incoming response data' => 'Відображення для вхідних даних відгуку',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            'Дані відповіді будуть оброблені цим відображенням так, щоб перетворити їх до того виду, що очікує активатор OTRS.',
        'Asynchronous' => 'Асинхронний',
        'This invoker will be triggered by the configured events.' => 'Цей активатор буде викликаний сконфігурованою подією.',
        'Asynchronous event triggers are handled by the OTRS Scheduler Daemon in background (recommended).' =>
            'Асинхронні тригери подій будуть оброблятись Службою Планувальника OTRS у фоновому режимі (рекомендовано).',
        'Synchronous event triggers would be processed directly during the web request.' =>
            'Синхронні тригери подій будуть обробляться безпосередньо під час веб-запиту.',
        'Save and continue' => 'Зберегти та продовжити',
        'Delete this Invoker' => 'Вилучити цей активатор.',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => 'Загальноінтерфейсне Просте Відображення для веб-служби %s',
        'Go back to' => 'Повернутися до',
        'Mapping Simple' => 'Просте відображення',
        'Default rule for unmapped keys' => 'Типове правило для ключів без відображення',
        'This rule will apply for all keys with no mapping rule.' => 'Це правило буде застосовуватися для всіх ключів, що не мають правил відображення.',
        'Default rule for unmapped values' => 'Типове правило для значень без відображення',
        'This rule will apply for all values with no mapping rule.' => 'Це правило буде застосовуватись для всіх значень, що не мають правил відображення.',
        'New key map' => 'Новий ключ відображення',
        'Add key mapping' => 'Додати ключ відображення',
        'Mapping for Key ' => 'Відображення для Ключа',
        'Remove key mapping' => 'Вилучити ключ відображення',
        'Key mapping' => 'Ключ відображення',
        'Map key' => 'Ключ відображення',
        'matching the' => 'відповідність',
        'to new key' => 'для нового ключа',
        'Value mapping' => 'Перетворення значень',
        'Map value' => 'Значення відображення',
        'to new value' => 'на нове значення',
        'Remove value mapping' => 'Вилучити відображення значення',
        'New value map' => 'Нове значення відображення',
        'Add value mapping' => 'Додати значення відображення',
        'Do you really want to delete this key mapping?' => 'Ви дійсно бажаєте вилучити цей ключ відображення?',
        'Delete this Key Mapping' => 'Видалити цей Ключ Відображення',

        # Template: AdminGenericInterfaceMappingXSLT
        'GenericInterface Mapping XSLT for Web Service %s' => 'ЗагальноІнтерфейсне XSLT Відображення для веб-служби %s',
        'Mapping XML' => 'XML відображення',
        'Template' => 'Зразок',
        'The entered data is not a valid XSLT stylesheet.' => 'Введені дані не є допустимою таблицею стилів XSLT.',
        'Insert XSLT stylesheet.' => 'Додати таблицю стилів XSLT.',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => 'Додати нову Операцію до Веб-служби %s',
        'Change Operation %s of Web Service %s' => 'Змінити Операцію %s Веб-служби %s',
        'Add new operation' => 'Додати нову операцію',
        'Change operation %s' => 'Змінити операцію %s',
        'Do you really want to delete this operation?' => 'Ви дійсно бажаєте видалити цю операцію?',
        'Operation Details' => 'Деталі операції.',
        'The name is typically used to call up this web service operation from a remote system.' =>
            'Ім\'я, що типово використовується для виклику операції цієї веб-служби віддаленої системи.',
        'Please provide a unique name for this web service.' => 'Вкажіть будь ласка унікальне ім\'я для цієї веб-служби.',
        'Mapping for incoming request data' => 'Відображенні вхідних даних запиту',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            'Дані запиту будуть оброблені цим відображенням, щоб перетворити його до виду даних, що очікує OTRS.',
        'Operation backend' => 'Внутрішня операція',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            'Цей внутрішній операційний модуль OTRS буде викликаний внутрішньо щоб обробити запит та згенерувати дані для відповіді.',
        'Mapping for outgoing response data' => 'Відображення для вихідних даних відповіді',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            'Дані відповіді будуть оброблені цим відображенням, щоб перетворити їх до того виду, який очікує віддалена система.',
        'Delete this Operation' => 'Вилучити цю операцію',

        # Template: AdminGenericInterfaceTransportHTTPREST
        'GenericInterface Transport HTTP::REST for Web Service %s' => 'ЗагальноІнтерфейсний Транспорт HTTP::REST для веб-служби %s',
        'Network transport' => 'Мережевий транспорт',
        'Properties' => 'Властивості',
        'Route mapping for Operation' => 'Відображення маршруту для Операції',
        'Define the route that should get mapped to this operation. Variables marked by a \':\' will get mapped to the entered name and passed along with the others to the mapping. (e.g. /Ticket/:TicketID).' =>
            'Визначення маршруту що дасть відображення для цієї операції. Змінні, що помічаються \':\' будуть відображені з вказаним ім\'ям та передається з іншими до відображення. (Наприклад /Ticket/:TicketID)',
        'Valid request methods for Operation' => 'Правильні методи запиту для Операції',
        'Limit this Operation to specific request methods. If no method is selected all requests will be accepted.' =>
            'Обмежити цю Операцію до певних методів запиту. Якщо ви не вкажете жодного методу, всі запити будуть прийняті.',
        'Maximum message length' => 'Максимальна довжина повідомлення',
        'This field should be an integer number.' => 'Це поле має містити ціле число.',
        'Here you can specify the maximum size (in bytes) of REST messages that OTRS will process.' =>
            'Тут ви можете визначити максимальний розмір (в байтах) REST повідомлення, що буде оброблено OTRS.',
        'Send Keep-Alive' => 'Надіслати Keep-аlive',
        'This configuration defines if incoming connections should get closed or kept alive.' =>
            'Ця конфігурація визначає які вхідні з\'єднання мають бути зачинені або збережені.',
        'Host' => 'Сервер',
        'Remote host URL for the REST requests.' => 'Віддалений вузол URL для REST запитів.',
        'e.g https://www.otrs.com:10745/api/v1.0 (without trailing backslash)' =>
            'наприклад https://www.otrs.com:10745/api/v1.0 (без оберненої косої межі)',
        'Controller mapping for Invoker' => 'Відображення контролера для активатора.',
        'The controller that the invoker should send requests to. Variables marked by a \':\' will get replaced by the data value and passed along with the request. (e.g. /Ticket/:TicketID?UserLogin=:UserLogin&Password=:Password).' =>
            'Контролер, якому активатор має посилати запити. Змінні, позначені як \':\' будуть замінені на значення даних та передаватись разом із запитом. (наприклад /Ticket/:TicketID?UserLogin=:UserLogin&Password=:Password).',
        'Valid request command for Invoker' => 'Чинна команда запиту для активатора',
        'A specific HTTP command to use for the requests with this Invoker (optional).' =>
            'Конкретна HTTP команда  що буде використовуватись для запитів з цим активатором (необов\'язково).',
        'Default command' => 'Типова команда',
        'The default HTTP command to use for the requests.' => 'Типова HTTP команда для використання у запитах.',
        'Authentication' => 'Автентифікація',
        'The authentication mechanism to access the remote system.' => 'Механізм автентифікації для доступу до віддаленої системи.',
        'A "-" value means no authentication.' => 'Значення "-" значить немає автентифікації.',
        'The user name to be used to access the remote system.' => 'Ім\'я користувача для доступу до віддаленої системи.',
        'The password for the privileged user.' => 'Пароль для привілейованого користувача.',
        'Use SSL Options' => 'Використовувати SSL опції',
        'Show or hide SSL options to connect to the remote system.' => 'Показати або приховати SSL опції для під\'єднання до віддаленої системи.',
        'Certificate File' => 'Файл сертифікату',
        'The full path and name of the SSL certificate file.' => 'Повний шлях та ім\'я файлу SSL сертифікату.',
        'e.g. /opt/otrs/var/certificates/REST/ssl.crt' => 'наприклад: /opt/otrs/var/certificates/REST/ssl.crt',
        'Certificate Password File' => 'Файл сертифікату паролю',
        'The full path and name of the SSL key file.' => 'Повний шлях та ім\'я ключового SSL файлу.',
        'e.g. /opt/otrs/var/certificates/REST/ssl.key' => 'наприклад /opt/otrs/var/certificates/REST/ssl.key',
        'Certification Authority (CA) File' => 'Файл сертифікованої автентифікації (СА)',
        'The full path and name of the certification authority certificate file that validates the SSL certificate.' =>
            'Повний шлях та ім\'я файлу-сертифікату сертифіційної автентифікації, що підтверджує SSL сертифікат.',
        'e.g. /opt/otrs/var/certificates/REST/CA/ca.file' => 'наприклад /opt/otrs/var/certificates/REST/CA/ca.file',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => 'ЗагальноІнтерфейсний Транспорт HTTP::SOAP для веб-служби %s',
        'Endpoint' => 'Кінцева точка',
        'URI to indicate a specific location for accessing a service.' =>
            'URI, щоб вказати конкретне місце для доступу до служби.',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => 'наприклад http://local.otrs.com:8000/Webservice/Example',
        'Namespace' => 'Простір Імен',
        'URI to give SOAP methods a context, reducing ambiguities.' => 'URI, щоб дати контекст методів SOAP, зменшуючи двозначність.',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            'наприклад urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions',
        'Request name scheme' => 'Схема імені запиту',
        'Select how SOAP request function wrapper should be constructed.' =>
            'Виберіть як має бути побудована функція обгортка SOAP запиту.',
        '\'FunctionName\' is used as example for actual invoker/operation name.' =>
            '\'FunctionName\' використовується в якості прикладу для фактичного імені активатора/операції.',
        '\'FreeText\' is used as example for actual configured value.' =>
            '\'FreeText\' використовується у якості прикладу для фактичного налаштованого значення.',
        'Request name free text' => 'ім\'я запиту вільним текстом',
        'Text to be used to as function wrapper name suffix or replacement.' =>
            'Текст що буде використовуватись як суфікс імені функції обгортки або заміна імені.',
        'Please consider XML element naming restrictions (e.g. don\'t use \'<\' and \'&\').' =>
            'Будь ласка зверніть увагу на обмеження іменування XML-елементу (наприклад - не використовувати \'<\' та \'&\')',
        'Response name scheme' => 'Схема імені відгуку',
        'Select how SOAP response function wrapper should be constructed.' =>
            'Виберіть як має бути побудована функція-обгортка SOAP відповіді.',
        'Response name free text' => 'Ім\'я відповіді вільним текстом.',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            'Тут ви можете визначити максимальний обсяг (в байтах) SOAP повідомлення, що буде обробляти OTRS.',
        'Encoding' => 'Кодування',
        'The character encoding for the SOAP message contents.' => 'Кодування символів для вмісту SOAP повідомлень.',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => 'наприклад utf-8, latin1, iso-8859-1, cp1250 тощо.',
        'SOAPAction' => 'SOAPДія',
        'Set to "Yes" to send a filled SOAPAction header.' => 'Вкажіть "Yes" щоб надіслати заповнений заголовок SOAPДії',
        'Set to "No" to send an empty SOAPAction header.' => 'Встановіть "No" щоб надіслати порожній заголовок SOAPДії.',
        'SOAPAction separator' => 'Відокремлювач SOAPДії',
        'Character to use as separator between name space and SOAP method.' =>
            'Символ що буде використаний як відокремлювач між ділянкою імені та SOAР методом.',
        'Usually .Net web services uses a "/" as separator.' => 'Зазвичай .Net веб-служба використовує "/" у якості відокремлювача.',
        'Proxy Server' => 'Проксі-сервер',
        'URI of a proxy server to be used (if needed).' => 'URI проксі-сервера, що використовується (якщо треба).',
        'e.g. http://proxy_hostname:8080' => 'наприклад http://proxy_hostname:8080',
        'Proxy User' => 'Користувач проксі-сервера',
        'The user name to be used to access the proxy server.' => 'Ім\'я користувача для доступу до проксі-сервера.',
        'Proxy Password' => 'Пароль проксі-сервера',
        'The password for the proxy user.' => 'Пароль користувача проксі-сервера.',
        'The full path and name of the SSL certificate file (must be in .p12 format).' =>
            'Повний шлях та ім\'я SSL файлу-сертифіката (має бути .p12 формату)',
        'e.g. /opt/otrs/var/certificates/SOAP/certificate.p12' => 'наприклад /opt/otrs/var/certificates/SOAP/certificate.p12',
        'The password to open the SSL certificate.' => 'Пароль для відімкнення SSL сертифікату.',
        'The full path and name of the certification authority certificate file that validates SSL certificate.' =>
            'Повний шлях та ім\'я файлу сертифікату сертифікаційної автентифікації що підтверджує SSL сертифікат',
        'e.g. /opt/otrs/var/certificates/SOAP/CA/ca.pem' => 'наприклад /opt/otrs/var/certificates/SOAP/CA/ca.pem',
        'Certification Authority (CA) Directory' => 'Директорія сертифікаційної авторизації (СА)',
        'The full path of the certification authority directory where the CA certificates are stored in the file system.' =>
            'Повний шлях у файловій системі до директорії сертифікаційної авторизації де зберігаються СА сертифікати.',
        'e.g. /opt/otrs/var/certificates/SOAP/CA' => 'наприклад /opt/otrs/var/certificates/SOAP/CA',
        'Sort options' => 'Параметри сортування',
        'Add new first level element' => 'Додати новий елемент першого рівня',
        'Element' => 'Елемент',
        'Outbound sort order for xml fields (structure starting below function name wrapper) - see documentation for SOAP transport.' =>
            'Вихідний порядок сортування для xml полів (структура що починається нижче імені функції обгортки) - дивись документацію на транспорт SOAP',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => 'ЗагальноІнтерфейсне Керування веб-службою',
        'Add web service' => 'Додати веб-службу',
        'Clone web service' => 'Клонувати веб-службу',
        'The name must be unique.' => 'ім\'я повинно бути унікальним.',
        'Clone' => 'Клонувати',
        'Export web service' => 'Експортувати веб-службу',
        'Import web service' => 'Імпортувати веб-службу',
        'Configuration File' => 'Файл конфігурації',
        'The file must be a valid web service configuration YAML file.' =>
            'Файл повинен бути чинним YAML конфігураційним файлом веб-служби.',
        'Import' => 'Імпорт',
        'Configuration history' => 'Історія конфігурації',
        'Delete web service' => 'Вилучити веб-службу',
        'Do you really want to delete this web service?' => 'Ви насправді хочете вилучити цю веб-службу?',
        'Ready-to-run Web Services' => 'Готова-до-запуску Веб-служба',
        'Here you can activate ready-to-run web services showcasing our best practices that are a part of %s.' =>
            'Тут ви можете активувати готові-до-запуску веб-служби що демонструють наші кращі практики, які є частиною %s.',
        'Please note that these web services may depend on other modules only available with certain %s contract levels (there will be a notification with further details when importing).' =>
            'Зверніть увагу, що ці веб-служби можуть залежати від інших модулів, доступних тільки з певним %s рівнем контракту (буде повідомлення з більш докладними поясненнями при імпорті).',
        'Import ready-to-run web service' => 'Імпортування готової-до-запуску веб-служби.',
        'Would you like to benefit from web services created by experts? Upgrade to %s to import some sophisticated ready-to-run web services.' =>
            'Ви хочете отримати переваги веб-служб, створених фахівцями? Оновіться  до %s щоб імпортувати деякі готові-до-запуску веб-служби.',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            'Після збереження конфігурації вас буде перенаправлено знову до екрану редагування.',
        'If you want to return to overview please click the "Go to overview" button.' =>
            'Якщо ви хочете повернутись до огляду, будь ласка, натисніть кнопку "Перейти до огляду".',
        'Web Service List' => 'Перелік веб-служб',
        'Remote system' => 'Віддалена система',
        'Provider transport' => 'Транспорт провайдера',
        'Requester transport' => 'Транспорт замовника',
        'Debug threshold' => 'Поріг зневадження',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            'В режимі постачальника, OTRS пропонує веб-служби, які використовуються віддаленими системами.',
        'In requester mode, OTRS uses web services of remote systems.' =>
            'В режимі запитувача, OTRS використовую веб-служби віддалених систем.',
        'Operations are individual system functions which remote systems can request.' =>
            'Операції - це окремі системні функції, які можуть запросити віддалені системи.',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            'Активатори готують дані для запиту до віддаленої веб-служби та обробляють дані їх відповіді.',
        'Controller' => 'Контролер',
        'Inbound mapping' => 'Вхідне відображення',
        'Outbound mapping' => 'Вихідне відображення',
        'Delete this action' => 'Вилучити цю дію',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            'Принаймні один %s має контролер, який або не активний або не присутній, будь ласка перевірте реєстрацію контролера або вилучіть %s',
        'Delete webservice' => 'Вилучити веб-службу',
        'Delete operation' => 'Вилучити операцію',
        'Delete invoker' => 'Вилучити активатор',
        'Clone webservice' => 'Клонувати веб-службу',
        'Import webservice' => 'Імпортувати веб-службу',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => 'ЗагальноІнтерфейсна Конфігурація історії для веб-служби ',
        'Go back to Web Service' => 'Повернутись до веб-служби',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            'Тут ви можете переглянути старі версії поточної конфігурації веб-служб, експортувати або навіть відновити їх.',
        'Configuration History List' => 'Перелік історії конфігурації.',
        'Version' => 'Версія',
        'Create time' => 'Створити час',
        'Select a single configuration version to see its details.' => 'Вибрати один варіант конфігурації щоб переглянути  його деталі.',
        'Export web service configuration' => 'Експорт конфігурації веб-служби',
        'Restore web service configuration' => 'Відновлення конфігурації веб-служби',
        'Do you really want to restore this version of the web service configuration?' =>
            'Ви дійсно бажаєте відновити цю версію конфігурації веб-служби?',
        'Your current web service configuration will be overwritten.' => 'Ваша поточна конфігурація веб-служби буде перезаписана.',
        'Restore' => 'Відновлення',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            'УВАГА: При зміні назви групи \'admin\', перш ніж зробити відповідні зміни в  SysConfig, ви будете відключені від адміністративної панелі! Якщо це станеться, будь ласка, змініть ім\'я групи назад до admin за допомогою SQL ствердження.',
        'Group Management' => 'Керування групами',
        'Add group' => 'Додати групу',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            'Група admin може здійснювати адміністрування, а група stats — переглядати статистику',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            'Створення нових груп для обробки прав доступу до різних груп агентів (наприклад відділ закупівель, відділ підтримки, відділ продаж,...).',
        'It\'s useful for ASP solutions. ' => 'Корисно для сервісів-провайдерів.',
        'total' => 'загально',
        'Add Group' => 'Додати групу',
        'Edit Group' => 'Редагувати групу',

        # Template: AdminLog
        'System Log' => 'Системний журнал',
        'Here you will find log information about your system.' => 'Тут ви знайдете журнальну інформацію вашої системи.',
        'Hide this message' => 'Приховати це повідомлення',
        'Recent Log Entries' => 'Останні Записи Журналу',

        # Template: AdminMailAccount
        'Mail Account Management' => 'Керування поштовими обліковими записами',
        'Add mail account' => 'Додати поштовий обліковий запис',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            'Усі вхідні листи із зазначеного облікового запису будуть перенесені в обрану чергу!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            'Якщо ваш обліковий запис є довіреним, буде використаний X-OTRS заголовок, що вже їснує, під час прибуття (для пріоритету, ...)! Фільтр PostMaster буде використовуватися у будь-якому випадку.',
        'Delete account' => 'Вилучити обліковий запис',
        'Fetch mail' => 'Забрати лист',
        'Add Mail Account' => 'Додати поштовий обліковий запис',
        'Example: mail.example.com' => 'Приклад: mail.example.com',
        'IMAP Folder' => 'Тека IMAP',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            'Змініть це, якщо вам потрібно отримати пошту з іншої теки, ніж INBOX. ',
        'Trusted' => 'Безпечна',
        'Dispatching' => 'Перенапрямок',
        'Edit Mail Account' => 'Змінити поштовий обліковий запис',

        # Template: AdminNavigationBar
        'Admin' => 'Адміністрування',
        'Agent Management' => 'Керування агентами',
        'Queue Settings' => 'Настроювання черг',
        'Ticket Settings' => 'Настроювання заявок',
        'System Administration' => 'Настроювання системи',
        'Online Admin Manual' => 'Тільки Керівництво Адміністратора',

        # Template: AdminNotificationEvent
        'Ticket Notification Management' => 'Керування Сповіщеннями про Квитки',
        'Add notification' => 'Додати сповіщення',
        'Export Notifications' => 'Експортувати Сповіщень',
        'Configuration Import' => 'Імпорт Конфігурації',
        'Here you can upload a configuration file to import Ticket Notifications to your system. The file needs to be in .yml format as exported by the Ticket Notification module.' =>
            'Тут ви можете вивантажити файл конфігурації для імпорту Сповіщень о Квитках до вашої системи. Файл повинен бути у .yml форматі такий як експортується модулем Сповіщення о Квитках.',
        'Overwrite existing notifications?' => 'Перезаписати наявні сповіщення?',
        'Upload Notification configuration' => 'Вивантажити конфігурацію Сповіщень',
        'Import Notification configuration' => 'Імпортувати конфігурацію Сповіщень',
        'Delete this notification' => 'Видалити це сповіщення',
        'Do you really want to delete this notification?' => 'Ви дійсно хочете вилучити це сповіщення?',
        'Add Notification' => 'Додати повідомлення',
        'Edit Notification' => 'Редагувати повідомлення',
        'Show in agent preferences' => 'Показати в налаштуваннях агента',
        'Agent preferences tooltip' => 'Підказка налаштувань агента',
        'This message will be shown on the agent preferences screen as a tooltip for this notification.' =>
            'Це повідомлення буде відображатись на екрані налаштувань агента у вигляді підказок для цього сповіщення.',
        'Here you can choose which events will trigger this notification. An additional ticket filter can be applied below to only send for ticket with certain criteria.' =>
            'Тут ви можете вибрати події, що будуть вмикати це сповіщення. Додатковий фільтр квитків може бути доданий нижче, щоб відправити сповіщення для квитка з певними критеріями.',
        'Ticket Filter' => 'Фільтр заявок',
        'Article Filter' => 'Фільтр Статей',
        'Only for ArticleCreate and ArticleSend event' => 'Тільки для подій ArticleCreate та ArticleSend ',
        'Article type' => 'Тип повідомлення',
        'If ArticleCreate or ArticleSend is used as a trigger event, you need to specify an article filter as well. Please select at least one of the article filter fields.' =>
            'Якщо ArticleCreate або ArticleSend використовуються як ініціюючи події, вам необхідно також вказати фільтр статті. Будь ласка виберіть принаймні одне поле фільтру статті.',
        'Article sender type' => 'Тип статті відправника',
        'Subject match' => 'Відповідність темі',
        'Body match' => 'Відповідність тілу листа',
        'Include attachments to notification' => 'Додати вкладення в повідомлення',
        'Recipients' => 'Одержувачі',
        'Send to' => 'Відправити',
        'Send to these agents' => 'Надіслати цим агентам',
        'Send to all group members' => 'Надіслати всім членам групи',
        'Send to all role members' => 'Надіслати всім членам ролі',
        'Send on out of office' => 'Надіслано з «Не при справах»',
        'Also send if the user is currently out of office.' => 'Також надіслати, якщо користувач зараз не при справах.',
        'Once per day' => 'Один раз на день',
        'Notify user just once per day about a single ticket using a selected transport.' =>
            'Повідомляти користувача тільки один раз на день про один квиток використовуючи вибраний транспорт.',
        'Notification Methods' => 'Методи Сповіщення',
        'These are the possible methods that can be used to send this notification to each of the recipients. Please select at least one method below.' =>
            'Це можливі методи, що можуть бути використані для відправлення цього сповіщення кожному з одержувачів. Будь ласка, виберіть нижче принаймні один метод.',
        'Enable this notification method' => 'Дозволити цей метод сповіщення',
        'Transport' => 'Транспорт',
        'At least one method is needed per notification.' => 'Принаймні один метод необхідний для кожного сповіщення.',
        'Active by default in agent preferences' => 'Типово активний в налаштуваннях агента.',
        'This is the default value for assigned recipient agents who didn\'t make a choice for this notification in their preferences yet. If the box is enabled, the notification will be sent to such agents.' =>
            'Це типове значення для призначених агентів-одержувачів, які ще не зробили вибір для цього сповіщення в їх налаштуваннях. Якщо прапорець увімкнений, сповіщення буде відправлено для таких агентів.',
        'This feature is currently not available.' => 'Ця функція наразі недоступна.',
        'No data found' => 'Даних не знайдено',
        'No notification method found.' => 'Жодного метода сповіщення не знайдено.',
        'Notification Text' => 'Текст сповіщення',
        'This language is not present or enabled on the system. This notification text could be deleted if it is not needed anymore.' =>
            'Цієї мови немає або вона не доступна в системі. Цей текст сповіщення може бути вилучений якщо він більше не потрібний.',
        'Remove Notification Language' => 'Видалити мову сповіщення',
        'Message body' => 'Тіло повідомлення',
        'Add new notification language' => 'Додати нову мову сповіщення',
        'Do you really want to delete this notification language?' => 'Ви дійсно хочете вилучити цю мову сповіщення?',
        'Tag Reference' => 'Тег посилання',
        'Notifications are sent to an agent or a customer.' => 'Повідомлення відправлені агентові або клієнтові',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            'Перші 20 символів теми з останнього повідомлення агента',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            'Перші 5 рядків останнього повідомлення агента',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            'Перші 20 символів теми з останнього повідомлення клієнта',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            'Перші 5 рядків останнього повідомлення клієнта',
        'Attributes of the current customer user data' => 'Атрибути поточних даних клієнта користувача.',
        'Attributes of the current ticket owner user data' => 'Атрибути поточних даних користувача власника квитка.',
        'Attributes of the current ticket responsible user data' => 'Атрибути поточних даних користувача відповідального за квиток',
        'Attributes of the current agent user who requested this action' =>
            'Атрибути поточного користувача-агента, який запросив цю дію',
        'Attributes of the recipient user for the notification' => 'Атрибути користувача-одержувача для сповіщення',
        'Attributes of the ticket data' => 'Атрибути даних квитка.',
        'Ticket dynamic fields internal key values' => 'Значення внутрішніх ключів динамічних полів квитка.',
        'Ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            'Динамічні поля квитка відображають значення, корисні для полів що Розкриваються та з Множинним вибором',
        'Example notification' => 'Приклад сповіщення',

        # Template: AdminNotificationEventTransportEmailSettings
        'Additional recipient email addresses' => 'Додаткові адреси електронної пошти одержувача',
        'You can use OTRS-tags like <OTRS_TICKET_DynamicField_...> to insert values from the current ticket.' =>
            'Ви можете використовувати OTRS-теги, такі як  <OTRS_TICKET_DynamicField_...>  щоб вставити значення з поточного квитка.',
        'Notification article type' => 'Тип сповіщень статті',
        'An article will be created if the notification is sent to the customer or an additional email address.' =>
            'Статтю буде створено, якщо сповіщення буде відправлено замовнику або на альтернативну електронну адресу.',
        'Email template' => 'Шаблон повідомлення електронної пошти',
        'Use this template to generate the complete email (only for HTML emails).' =>
            'Використовуйте цей шаблон для створення повного повідомлення електронної пошти (тільки для HTML-листів)',
        'Enable email security' => 'Включити захист електронної пошти',
        'Email security level' => 'Рівень безпеки електронної пошти',
        'If signing key/certificate is missing' => 'Якщо ключ підпису або сертифікат відсутні',
        'If encryption key/certificate is missing' => 'Якщо ключ шифрування або сертифікат відсутні',

        # Template: AdminOTRSBusinessInstalled
        'Manage %s' => 'Керування %s',
        'Go to the OTRS customer portal' => 'Перейти до порталу клієнтів OTRS',
        'Downgrade to OTRS Free' => 'Знизити версію до безкоштовного OTRS',
        'Read documentation' => 'Читайте документацію',
        '%s makes contact regularly with cloud.otrs.com to check on available updates and the validity of the underlying contract.' =>
            '%s регулярно контактує з  cloud.otrs.com, щоб перевірити наявність оновлень і терміну дії основної угоди.',
        'Unauthorized Usage Detected' => 'Виявлено несанкційоване використання',
        'This system uses the %s without a proper license! Please make contact with %s to renew or activate your contract!' =>
            'Ця система використовує %s без належної ліцензії! Будь ласка зв\'яжіться з %s для поновлення або активації своєї угоди!',
        '%s not Correctly Installed' => '%s встановлений неправильно',
        'Your %s is not correctly installed. Please reinstall it with the button below.' =>
            'Ваш %s встановлений неправильно. Будь ласка, перевстановіть його за допомогою кнопки нижче.',
        'Reinstall %s' => 'Перевстановлення %s',
        'Your %s is not correctly installed, and there is also an update available.' =>
            'Ваш %s встановлений неправильно, і є також оновлення.',
        'You can either reinstall your current version or perform an update with the buttons below (update recommended).' =>
            'Ви можете або перевстановити поточну версію або оновити за допомогою кнопок нижче (оновлення рекомендується)',
        'Update %s' => 'Оновлення $s',
        '%s Not Yet Available' => '$s ще не доступний',
        '%s will be available soon.' => '%s буде доступний найближчим часом.',
        '%s Update Available' => 'Доступні оновлення %s',
        'Package installation requires patch level update of OTRS.' => 'Встановлення пакунка потребує оновлення рівня виправлень OTRS.',
        'Please visit our customer portal and file a request.' => 'Будь ласка, відвідайте наш портал клієнта та подайте заявку.',
        'Everything else will be done as part of your contract.' => 'Все інше буде зроблено в рамках угоди.',
        'Your installed OTRS version is %s.' => 'Версія вашого встановленого OTRS %s.',
        'To install the current version of OTRS Business Solution™, you need to update to OTRS %s or higher.' =>
            'Для того, щоб встановити поточну версію OTRS Business Solution ™, ви маєте оновитись до OTRS %s або вище.',
        'To install the current version of OTRS Business Solution™, the Maximum OTRS Version is %s.' =>
            'Для того, щоб встановити поточну версію OTRS Business Solution™, максимальна версія OTRS це %s.',
        'To install this package, the required Framework version is %s.' =>
            'Щоб встановити цей пакунок, необхідний Фреймворк версії %s.',
        'Why should I keep OTRS up to date?' => 'Чому я маю тримати OTRS в актуальному стані?',
        'You will receive updates about relevant security issues.' => 'Ви будете отримувати нову інформацію з відповідних питань безпеки.',
        'You will receive updates for all other relevant OTRS issues' => 'Ви будете отримувати оновлення для всіх інших відповідних питань OTRS',
        'An update for your %s is available! Please update at your earliest!' =>
            'Оновлення для вашого %s доступне! Будь ласка, поновіть найближчим часом!',
        '%s Correctly Deployed' => '%s розгорнуто правильно',
        'Congratulations, your %s is correctly installed and up to date!' =>
            'Вітаємо, ваш %s встановлено правильно та має актуальну версію!',

        # Template: AdminOTRSBusinessNotInstalled
        '%s will be available soon. Please check again in a few days.' =>
            '%s незабаром буде доступний. Будь ласка, перевірте ще раз через кілька днів.',
        'Please have a look at %s for more information.' => 'Будь ласка, зверніть увагу на %s для отримання додаткової інформації.',
        'Your OTRS Free is the base for all future actions. Please register first before you continue with the upgrade process of %s!' =>
            'Ваш безоплатний  OTRS є основою для всіх подальших дій. Будь ласка, зареєструйтесь, перше ніж ви продовжите процес оновлення %s!',
        'Before you can benefit from %s, please contact %s to get your %s contract.' =>
            'Перш ніж скористатися %s, зв\'яжіться із %s щоб отримати вашу %s угоду.',
        'Connection to cloud.otrs.com via HTTPS couldn\'t be established. Please make sure that your OTRS can connect to cloud.otrs.com via port 443.' =>
            'Неможливо встановити з\'єднання із cloud.otrs.com за допомогою HTTPS. Будь ласка, переконайтеся в тому, що ваш OTRS може під\'єднатися до cloud.otrs.com використовуючи порт 443.',
        'To install this package, you need to update to OTRS %s or higher.' =>
            'Щоб встановити цей пакунок, вам необхідно оновитись до OTRS %s або вище.',
        'To install this package, the Maximum OTRS Version is %s.' => 'Максимальна версія OTRS для встановлення цього пакунку, це %s.',
        'With your existing contract you can only use a small part of the %s.' =>
            'З вашою чинною угодою ви можете використовувати лише невелику частку %s.',
        'If you would like to take full advantage of the %s get your contract upgraded now! Contact %s.' =>
            'Якщо ви маєте бажання скористатися всіма перевагами %s, покращить вашу угоду зараз! Зв\'яжіться з %s.',

        # Template: AdminOTRSBusinessUninstall
        'Cancel downgrade and go back' => 'Скасувати погіршення та повернутися',
        'Go to OTRS Package Manager' => 'Перейти до менеджера пакунків OTRS',
        'Sorry, but currently you can\'t downgrade due to the following packages which depend on %s:' =>
            'Вибачте, але зараз ви не можете погіршити угоду за рахунок наступних пакунків, що залежать від %s:',
        'Vendor' => 'Виготовлювач',
        'Please uninstall the packages first using the package manager and try again.' =>
            'Будь ласка, спершу вилучіть  пакунки з використанням менеджера пакунків та спробуйте ще раз.',
        'You are about to downgrade to OTRS Free and will lose the following features and all data related to these:' =>
            'Ви збираєтесь спростити угоду до безоплатного OTRS та втратите наступні функції та дані, що пов\'язані із ними:',
        'Chat' => 'Чат',
        'Report Generator' => 'Генератор звітів',
        'Timeline view in ticket zoom' => 'Вигляд лінії часу в збільшенні квитка',
        'DynamicField ContactWithData' => 'ДинамічнеПоле Зв\'язокЗДаними',
        'DynamicField Database' => 'Динамічне поле БазаДаних',
        'SLA Selection Dialog' => 'Діалог вибору SLA',
        'Ticket Attachment View' => 'Перегляд долучення квитка',
        'The %s skin' => 'Зовнішній вигляд %s',

        # Template: AdminPGP
        'PGP Management' => 'Керування підписами PGP',
        'PGP support is disabled' => 'Підтримку PGP скасовано.',
        'To be able to use PGP in OTRS, you have to enable it first.' => 'Щоб мати змогу використовувати PGP в OTRS ви повинні спочатку увімкнути його.',
        'Enable PGP support' => 'Дозволити підтримку PGP',
        'Faulty PGP configuration' => 'Невірні налаштування PGP',
        'PGP support is enabled, but the relevant configuration contains errors. Please check the configuration using the button below.' =>
            'Підтримка PGP увімкнена, але відповідна конфігурація містить помилки. Будь ласка перевірте конфігурацію за допомогою кнопки нижче.',
        'Configure it here!' => 'Налаштуйте це тут!',
        'Check PGP configuration' => 'Перевірте конфігурацію PGP',
        'Add PGP key' => 'Додати PGP ключ',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            'Таким чином, Ви можете безпосередньо редагувати кільце налаштоване в SysConfig.',
        'Introduction to PGP' => 'Введення до PGP',
        'Result' => 'Результат',
        'Identifier' => 'Ідентифікатор',
        'Bit' => 'Біт',
        'Fingerprint' => 'Цифровий відбиток',
        'Expires' => 'Минає',
        'Delete this key' => 'Вилучити ключ',
        'Add PGP Key' => 'Додати PGP ключ',
        'PGP key' => 'PGP ключ',

        # Template: AdminPackageManager
        'Package Manager' => 'Керування пакетами',
        'Uninstall package' => 'Деінсталювати пакет',
        'Do you really want to uninstall this package?' => 'Вилучити цей пакет?',
        'Reinstall package' => 'Переустановити пакет',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            'Ви дійсно хочете перевстановити цей пакунок? Аби-які ручні зміни буде втрачено!',
        'Go to upgrading instructions' => 'Перейти до інструкцій з модернізації',
        'package information' => 'інформація про пакет',
        'Package installation requires a patch level update of OTRS.' => 'Установка пакунку потребує оновлення рівня виправлень OTRS.',
        'Package update requires a patch level update of OTRS.' => 'Оновлення пакунку потребує оновлення рівня оновлень OTRS.',
        'If you are a OTRS Business Solution™ customer, please visit our customer portal and file a request.' =>
            'Якщо ви є клієнтом OTRS Business Solution™, будь ласка, відвідайте наш портал клієнтів та подайте заявку.',
        'Please note that your installed OTRS version is %s.' => 'Зверніть увагу, що версія встановленого OTRS %s.',
        'To install this package, you need to update OTRS to version %s or newer.' =>
            'Щоб встановити цей пакунок, ви маєте оновити OTRS до версії %s або новіше.',
        'This package can only be installed on OTRS version %s or older.' =>
            'Цей пакунок можна встановити на OTRS версії %s або старше.',
        'This package can only be installed on OTRS version %s or newer.' =>
            'Цей пакунок можна встановити на OTRS версії %s або новіше.',
        'You will receive updates for all other relevant OTRS issues.' =>
            'Ви будете отримувати оновлення для всіх інших питань стосовно OTRS.',
        'How can I do a patch level update if I don’t have a contract?' =>
            'Як я можу оновити рівень виправлень якщо у мене немає угоди?',
        'Please find all relevant information within the upgrading instructions at %s.' =>
            'Будь ласка, знайдіть відповідну інформацію в інструкції по оновленню в %s.',
        'In case you would have further questions we would be glad to answer them.' =>
            'У разі, якщо ви маєте додаткові запитання, ми будемо раді відповісти на них.',
        'Continue' => 'Продовжити',
        'Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            'Будь ласка, переконайтеся в тому, що ваша база даних приймає пакунки за розміром більше ніж %s МБ (в даний час приймаються пакунки за розміром до %s МБ). Будь ласка адаптуйте установку max_allowed_packet  вашої бази даних, щоб уникнути помилок.',
        'Install' => 'Установити',
        'Install Package' => 'Установити пакет',
        'Update repository information' => 'Обновити інформацію репозитарія',
        'Cloud services are currently disabled.' => 'Хмарні служби наразі вимкнуті.',
        'OTRS Verify™ can not continue!' => 'OTRS Verify™ не може тривати!',
        'Enable cloud services' => 'Дозволити хмарні служби',
        'Online Repository' => 'Онлайновий репозитарій',
        'Module documentation' => 'Документація модуля',
        'Upgrade' => 'Обновити',
        'Local Repository' => 'Локальний репозитарій',
        'This package is verified by OTRSverify (tm)' => 'Цей пакунок перевірений OTRSverify (tm)',
        'Uninstall' => 'Вилучити',
        'Reinstall' => 'Переустановити',
        'Features for %s customers only' => 'Функція тільки для клієнтів %s',
        'With %s, you can benefit from the following optional features. Please make contact with %s if you need more information.' =>
            'З %s ви можете скористатися наступними додатковими функціями. Будь ласка зв\'яжіться із %s, якщо вам потрібна додаткова інформація.',
        'Download package' => 'Скачати пакет',
        'Rebuild package' => 'Перезібрати пакет',
        'Metadata' => 'Метадані',
        'Change Log' => 'Журнал змін',
        'Date' => 'Дата',
        'List of Files' => 'Список файлів',
        'Permission' => 'Права доступу',
        'Download' => 'Завантажити',
        'Download file from package!' => 'Завантажити файл із пакета!',
        'Required' => ' Потрібно',
        'Primary Key' => 'Первинний ключ',
        'Auto Increment' => 'Автоматичний приріст',
        'SQL' => 'SQL',
        'File differences for file %s' => 'Файл відмінностей для файлу %s',

        # Template: AdminPerformanceLog
        'Performance Log' => 'Журнал продуктивності',
        'This feature is enabled!' => 'Дана функція активована!',
        'Just use this feature if you want to log each request.' => 'Використовуйте цю функцію, якщо прагнете затягати кожний запит у журнал',
        'Activating this feature might affect your system performance!' =>
            'Включення цієї функції може позначитися на продуктивності вашої системи',
        'Disable it here!' => 'Відключити функцію!',
        'Logfile too large!' => 'Файл журналу занадто великий!',
        'The logfile is too large, you need to reset it' => 'Файл логу занадто великий, необхідно його очистити',
        'Overview' => 'Огляд',
        'Range' => 'Діапазон',
        'last' => 'останній',
        'Interface' => 'Інтерфейс',
        'Requests' => 'Запитів',
        'Min Response' => 'Мінімальний час відповіді',
        'Max Response' => 'Максимальний час відповіді',
        'Average Response' => 'Середній час відповіді',
        'Period' => 'Період',
        'Min' => 'Мін',
        'Max' => 'Макс',
        'Average' => 'Середнє',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => 'Керування фільтром PostMaster ',
        'Add filter' => 'Додати фільтр',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            'Для відправки або фільтрації вхідних повідомлень електронної пошти на основі заголовків повідомлень. Також можливе зіставлення з використанням регулярних висловів.',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            'Якщо ви прагнете отфильтровать тільки по адресах електронної пошти, використовуйте EMAILADDRESS:info@example.com у полях From, To або Cc.',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            'При використанні регулярних висловів, ви також можете використовувати значення зіставлення в () як [***] в дії \'Set\'.',
        'Delete this filter' => 'Вилучити цей фільтр',
        'Do you really want to delete this filter?' => 'Ви дійсно хочете видалити цей фільтр?',
        'Add PostMaster Filter' => 'Додати PostMaster фільтр',
        'Edit PostMaster Filter' => 'Редагувати PostMaster фільтр',
        'A postmaster filter with this name already exists!' => 'Postmaster фільтр з таким ім\'ям вже існує!',
        'Filter Condition' => 'Умова фільтру',
        'AND Condition' => 'Умова ТА',
        'Check email header' => 'Перевірити заголовок поштового повідомлення.',
        'Negate' => 'Заперечення (НІ)',
        'Look for value' => 'Пошук значення',
        'The field needs to be a valid regular expression or a literal word.' =>
            'Поле має бути регулярним висловом або літеральним словом.',
        'Set Email Headers' => 'Встановити Заголовки електронної пошти',
        'Set email header' => 'Встановити заголовок електронної пошти',
        'Set value' => 'Задати значення',
        'The field needs to be a literal word.' => 'Поле має бути літеральним словом.',

        # Template: AdminPriority
        'Priority Management' => 'Керування пріоритетами',
        'Add priority' => 'Додати пріоритет',
        'Add Priority' => 'Створити пріоритет',
        'Edit Priority' => 'Змінити пріоритет',

        # Template: AdminProcessManagement
        'Process Management' => 'Керування процессом',
        'Filter for Processes' => 'Фільтр для процесів',
        'Create New Process' => 'Створити новий процес',
        'Deploy All Processes' => 'Розгорнути всі процеси',
        'Here you can upload a configuration file to import a process to your system. The file needs to be in .yml format as exported by process management module.' =>
            'Тут ви можете вивантажити файл конфігурації для імпорту процесу до вашої системи. Файл має бути в форматі .yml, таким як експортується модулем керування процесом.',
        'Overwrite existing entities' => 'Перезапис об\'єктів що існують',
        'Upload process configuration' => 'Вивантажити конфігурацію процесу',
        'Import process configuration' => 'Імпортувати конфігурацію процесу',
        'Ready-to-run Processes' => 'Готові-до-запуску процеси',
        'Here you can activate ready-to-run processes showcasing our best practices. Please note that some additional configuration may be required.' =>
            'Тут ви можете активувати готові-до-запуску процеси, демонструючи наші кращі практики. Будь ласка, зверніть увагу, що можуть знадобитись деякі додаткові налаштування.',
        'Would you like to benefit from processes created by experts? Upgrade to %s to import some sophisticated ready-to-run processes.' =>
            'Ви хочете отримати переваги від процесів, що створені експертами? Покращить до %s щоб імпортувати деякі складні готові-до-запуску процеси.',
        'Import ready-to-run process' => 'Імпортування готового-до-запуску процесу.',
        'To create a new Process you can either import a Process that was exported from another system or create a complete new one.' =>
            'Щоб створити новий процес Ви можете або імпортувати Процес, що був експортований з іншої системи, або створити цілком новий.',
        'Changes to the Processes here only affect the behavior of the system, if you synchronize the Process data. By synchronizing the Processes, the newly made changes will be written to the Configuration.' =>
            'Зміни в процесах тут вплинуть на поведінку системи тільки після синхронізації даних процесу. При синхронізації процесів, нещодавно зроблені зміни будуть записані до конфігурації.',
        'Processes' => 'Процеси',
        'Process name' => 'Ім\'я процесу',
        'Print' => 'Друк',
        'Export Process Configuration' => 'Експорт конфігурації процесу',
        'Copy Process' => 'Копіювання процесу',

        # Template: AdminProcessManagementActivity
        'Cancel & close' => 'Скасувати & закрити',
        'Go Back' => 'Повернутись',
        'Please note, that changing this activity will affect the following processes' =>
            'Зверніть увагу. що зміна цієї активності буде впливати на наступні процеси',
        'Activity' => 'Активність',
        'Activity Name' => 'Ім\'я активності',
        'Activity Dialogs' => 'Діалоги активності',
        'You can assign Activity Dialogs to this Activity by dragging the elements with the mouse from the left list to the right list.' =>
            'Ви можете призначити Діалоги Активності на цю Активність шляхом перетягування елементів за допомогою миші зі списку ліворуч у список праворуч.',
        'Ordering the elements within the list is also possible by drag \'n\' drop.' =>
            'Впорядковування елементів в списку також можна робити за допомогою "тягни-й-пусти" (drag \'n\' drop).',
        'Filter available Activity Dialogs' => 'Фільтр доступних Діалогів Активності.',
        'Available Activity Dialogs' => 'Доступні Діалоги Активності',
        'Name: %s, EntityID: %s' => 'Ім\'я: %s, EntityID: %s',
        'Create New Activity Dialog' => 'Створити новий Діалог Активності',
        'Assigned Activity Dialogs' => 'Призначені Діалоги Активності',
        'As soon as you use this button or link, you will leave this screen and its current state will be saved automatically. Do you want to continue?' =>
            'Як тільки ви використаєте цю кнопку або посилання, ви залишите цей екран та його поточний стан буде збережений автоматично. Ви хочете продовжити?',

        # Template: AdminProcessManagementActivityDialog
        'Please note that changing this activity dialog will affect the following activities' =>
            'Зверніть увагу, будь ласка, що змінення цього діалогу активності змінить наступні активності',
        'Please note that customer users will not be able to see or use the following fields: Owner, Responsible, Lock, PendingTime and CustomerID.' =>
            'Зверніть увагу, будь ласка, що клієнт-користувач не буде мати змогу бачити або використовувати наступні поля: Owner (Власник), Responsible (Відповідач), Lock (Блокування), PendingTime (ЧасЗатримки) та CustomerID (ІдентифікаторКлієнта).',
        'The Queue field can only be used by customers when creating a new ticket.' =>
            'Поле Queue (Черга) може бути використана клієнтом тільки під час створення нового квитка.',
        'Activity Dialog' => 'Діалог активності',
        'Activity dialog Name' => 'Ім\'я діалогу активності',
        'Available in' => 'Доступне в',
        'Description (short)' => 'Опис (стисло)',
        'Description (long)' => 'Опис (докладно)',
        'The selected permission does not exist.' => 'Вибрані дозволи не існують.',
        'Required Lock' => 'Обов\'язкове блокування',
        'The selected required lock does not exist.' => 'Вибране обов\'язкове блокування не існує.',
        'Submit Advice Text' => 'Надіслати текст поради',
        'Submit Button Text' => 'Надіслати текст кнопки',
        'Fields' => 'Поля',
        'You can assign Fields to this Activity Dialog by dragging the elements with the mouse from the left list to the right list.' =>
            'Ви можете призначити Поля для цього Діалогу активності шляхом перетягування елементів за допомогою миші з лівого списку до правого. ',
        'Filter available fields' => 'Фільтрувати доступні поля',
        'Available Fields' => 'Доступні поля',
        'Name: %s' => 'Ім\'я: %s',
        'Assigned Fields' => 'Призначені поля',
        'ArticleType' => 'ТипСтатті',
        'Display' => 'Відображення',
        'Edit Field Details' => 'Редагувати деталі полів',
        'Customer interface does not support internal article types.' => 'Інтерфейс клієнта не підтримує внутрішні типи статей.',

        # Template: AdminProcessManagementPath
        'Path' => 'Шлях',
        'Edit this transition' => 'Редагувати цей перехід',
        'Transition Actions' => 'Дії переходу',
        'You can assign Transition Actions to this Transition by dragging the elements with the mouse from the left list to the right list.' =>
            'Ви можете призначити Дії Переходу до цього Переходу шляхом перетягування елементів за допомогою миші зі списку ліворуч до списку праворуч.',
        'Filter available Transition Actions' => 'Фільтрувати доступні Дії Переходу',
        'Available Transition Actions' => 'Доступні Дії Переходу',
        'Create New Transition Action' => 'Створити Нову Дію Переходу',
        'Assigned Transition Actions' => 'Призначити Перехідні Дії',

        # Template: AdminProcessManagementProcessAccordion
        'Activities' => 'Активності',
        'Filter Activities...' => 'Фільтрувати Активності...',
        'Create New Activity' => 'Створити Нову Активність',
        'Filter Activity Dialogs...' => 'Фільтрувати Діалоги Активності...',
        'Transitions' => 'Переходи',
        'Filter Transitions...' => 'Фільтрувати Переходи...',
        'Create New Transition' => 'Створити Новий Перехід',
        'Filter Transition Actions...' => 'Фільтрувати Дії Переходу...',

        # Template: AdminProcessManagementProcessEdit
        'Edit Process' => 'Редагувати Процес',
        'Print process information' => 'Друкувати інформацію про процес',
        'Delete Process' => 'Вилучити Процес',
        'Delete Inactive Process' => 'Вилучити неактивний процес',
        'Available Process Elements' => 'Доступні Елементи Процесу',
        'The Elements listed above in this sidebar can be moved to the canvas area on the right by using drag\'n\'drop.' =>
            'Елементи, що перераховані вище в цій бічній панелі, можуть бути переміщені в область полотна праворуч використовуючи "тягни-й-пусти".',
        'You can place Activities on the canvas area to assign this Activity to the Process.' =>
            'Ви можете розмістити Активності на площі полотна, щоб призначити Активність Процесу.',
        'To assign an Activity Dialog to an Activity drop the Activity Dialog element from this sidebar over the Activity placed in the canvas area.' =>
            'Щоб призначити Діалог Активності до Активності, перетягніть елемент Діалогу Активності з цієї бічної панелі на Активність, що розташована в області полотна.',
        'You can start a connection between two Activities by dropping the Transition element over the Start Activity of the connection. After that you can move the loose end of the arrow to the End Activity.' =>
            'Ви можете створити зв\'язок між двома Активностями перетягуючи елемент Перетворення на Початкову  Активність з\'єднання. Після цього ви можете переміщати вільний кінець стрілки до Кінцевої Активності.',
        'Actions can be assigned to a Transition by dropping the Action Element onto the label of a Transition.' =>
            'Дії можуть бути віднесені до Переходу перетягуючи Елемент Дії на позначку Переходу.',
        'Edit Process Information' => 'Редагувати Інформацію про Процес',
        'Process Name' => 'Ім\'я Процесу',
        'The selected state does not exist.' => 'Вибраного стану не існує.',
        'Add and Edit Activities, Activity Dialogs and Transitions' => 'Додати та Редагувати Активності, Діалоги Активності та Переходи',
        'Show EntityIDs' => 'Показати EntityIDs',
        'Extend the width of the Canvas' => 'Розсунути довжину Полотна',
        'Extend the height of the Canvas' => 'Розсунути висоту Полотна',
        'Remove the Activity from this Process' => 'Вилучити Активність з цього Процесу',
        'Edit this Activity' => 'Редагувати Активність',
        'Save Activities, Activity Dialogs and Transitions' => 'Переглянути Активності, Діалоги Активності та Переходи',
        'Do you really want to delete this Process?' => 'Ви насправді хочете вилучити цей Процес?',
        'Do you really want to delete this Activity?' => 'Ви насправді хочете вилучити цю Активність?',
        'Do you really want to delete this Activity Dialog?' => 'Ви насправді хочете вилучити цей Діалог Активності?',
        'Do you really want to delete this Transition?' => 'Ви насправді хочете вилучити цей Перехід?',
        'Do you really want to delete this Transition Action?' => 'Ви насправді хочете вилучити цю Дію Переходу?',
        'Do you really want to remove this activity from the canvas? This can only be undone by leaving this screen without saving.' =>
            'Ви дійсно хочете вилучити цю активність з цього полотна? Це може бути скасовано лише шляхом виходу з цього екрану без збереження. ',
        'Do you really want to remove this transition from the canvas? This can only be undone by leaving this screen without saving.' =>
            'Ви дійсно хочете вилучити цей перехід з полотна? Це може бути скасовано лише шляхом виходу з цього екрану без збереження.',
        'Hide EntityIDs' => 'Приховати EntityIDs',
        'Delete Entity' => 'Вилучити Об\'єкт',
        'Remove Entity from canvas' => 'Вилучити Об\'єкт з полотна',
        'This Activity is already used in the Process. You cannot add it twice!' =>
            'Ця Активність вже використовується в Процесі. Ви не можете додати її двічі!',
        'This Activity cannot be deleted because it is the Start Activity.' =>
            'Ця Активність не може бути вилучена тому що вона є Початковою Активністю',
        'This Transition is already used for this Activity. You cannot use it twice!' =>
            'Цей Перехід вже використовується для цієї Активності. Ви не можете використати його двічі!',
        'This TransitionAction is already used in this Path. You cannot use it twice!' =>
            'Ця Дія Переходу вже використовується в цьому Шляху. Ви не можете використовувати її двічі!',
        'Remove the Transition from this Process' => 'Вилучити Перехід з цього Процесу',
        'No TransitionActions assigned.' => 'Не призначено Переходових Дій (TransitionActions)',
        'The Start Event cannot loose the Start Transition!' => 'Початкова Подія не може втратити Початковий Перехід!',
        'No dialogs assigned yet. Just pick an activity dialog from the list on the left and drag it here.' =>
            'Жодного Діалогу ще не призначено. Просто виберіть діалог активності зі списку ліворуч та перетягніть його сюди.',
        'An unconnected transition is already placed on the canvas. Please connect this transition first before placing another transition.' =>
            'Непов\'язаний перехід вже розміщений на полотні. Будь ласка, спочатку з\'єднайте цей перехід перед встановленням іншого.',

        # Template: AdminProcessManagementProcessNew
        'In this screen, you can create a new process. In order to make the new process available to users, please make sure to set its state to \'Active\' and synchronize after completing your work.' =>
            'На цьому екрані ви маєте змогу створити новий процес. Для того щоб створити новий процес доступним для користувачів, будь ласка, переконайтеся що його встановлено в стан "Активний" та проведено синхронізацію після завершення вашої роботи.',

        # Template: AdminProcessManagementProcessPrint
        'cancel & close' => 'скасувати & закрити',
        'Start Activity' => 'Початкова Активність',
        'Contains %s dialog(s)' => 'Містить %s діалог(и)',
        'Assigned dialogs' => 'Призначені діалоги',
        'Activities are not being used in this process.' => 'Активності не використовуються у цьому процесі.',
        'Assigned fields' => 'Призначені поля',
        'Activity dialogs are not being used in this process.' => 'Діалоги активності не використовуються у цьому процесі.',
        'Condition linking' => 'Умова з\'єднання',
        'Conditions' => 'Умови',
        'Condition' => 'Умова',
        'Transitions are not being used in this process.' => 'Переходи не використовуються у цьому процесі.',
        'Module name' => 'Ім\'я модуля',
        'Transition actions are not being used in this process.' => 'Переходові дії не використовуються у цьому процесі.',

        # Template: AdminProcessManagementTransition
        'Please note that changing this transition will affect the following processes' =>
            'Зверніть увагу, що зміна цього переходу буде впливати на наступні процеси.',
        'Transition' => 'Перехід',
        'Transition Name' => 'Ім\'я Переходу',
        'Conditions can only operate on non-empty fields.' => 'Умови можуть діяти тільки з непорожніми полями.',
        'Type of Linking between Conditions' => 'Тип Зв\'язку між Умовами',
        'Remove this Condition' => 'Видалити цю Умову',
        'Type of Linking' => 'Тип Зв\'язку',
        'Add a new Field' => 'Додати нове Поле',
        'Remove this Field' => 'Вилучити це Поле',
        'And can\'t be repeated on the same condition.' => 'Та не може бути повторений при тих самих умовах.',
        'Add New Condition' => 'Додати Нову Умову',

        # Template: AdminProcessManagementTransitionAction
        'Please note that changing this transition action will affect the following processes' =>
            'Зверніть увагу, що зміна цієї переходової дії вплине на наступні процеси',
        'Transition Action' => 'Переходова Дія',
        'Transition Action Name' => 'Ім\'я Переходової Дії',
        'Transition Action Module' => 'Модуль Переходової Дії',
        'Config Parameters' => 'Параметри Конфігурації',
        'Add a new Parameter' => 'Додати новий Параметр',
        'Remove this Parameter' => 'Вилучити цей Параметр',

        # Template: AdminQueue
        'Manage Queues' => 'Керування чергами',
        'Add queue' => 'Додати черга',
        'Add Queue' => 'Додати Черга',
        'Edit Queue' => 'Змінити черга',
        'A queue with this name already exists!' => 'Черга з таким ім\'ям вже існує!',
        'Sub-queue of' => 'Підчерга черги',
        'Unlock timeout' => 'Строк блокування',
        '0 = no unlock' => '0 — без блокування',
        'Only business hours are counted.' => 'З обліком тільки робочого часу.',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            'Якщо агент блокує квиток та не закриває його до того, як  буде вичерпаний період розблокування, квиток буде розблокований та доступний для інших агентів.',
        'Notify by' => 'Повідомлення від',
        '0 = no escalation' => '0 — без ескалації',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            'Якщо не буде додано контакт клієнта, або зовнішня електронна адреса чи телефон до нового квитка перед тим як зазначений тут час буде вичерпано, квиток буде підвищено.',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            'Якщо додається стаття, наприклад, спостерігання за допомогою електронної скриньки або порталу клієнта, час поновлення підвищення (ескалації) буде скинуто. Якщо немає контакту клієнта або адреси зовнішньої скриньки чи номеру телефону, доданих до квитка до вичерпання зазначеного тут часу, квиток буде підвищено (ескаловано).',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            'Якщо заявка не закрита до зазначеного тут часу завершення, вона ескалюється.',
        'Follow up Option' => 'Параметри автовідповіді',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            'Вказує, якщо слідувати до закритих квитків то це може призвести до їх повторного відкриття, тому буде відхилено або направлено до створення нового квитка.',
        'Ticket lock after a follow up' => 'Блокувати заявку після одержання відповіді',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            'Якщо квиток закритий та клієнт намагається встановити стеження, квиток буде заблокований для старого власника.',
        'System address' => 'Адреса системи',
        'Will be the sender address of this queue for email answers.' => 'Установка адреси відправника для відповідей у цій черзі.',
        'Default sign key' => 'Типовий ключ підпису',
        'The salutation for email answers.' => 'Вітання для листів',
        'The signature for email answers.' => 'Підпис для листів',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => 'Керування Залежностями Авто-Відповідей Черги',
        'This filter allow you to show queues without auto responses' => 'Цей фільтр дозволяє вам побачити черги без авто-відповідей',
        'Queues without auto responses' => 'Черги без авто-відповідей',
        'This filter allow you to show all queues' => 'Цей фільтр дозволяє вам побачити всі черги',
        'Show all queues' => 'Показати всі черги',
        'Filter for Queues' => 'Фільтр для Черг',
        'Filter for Auto Responses' => 'Фільтр для Авто-Відповідей',
        'Auto Responses' => 'Автовідповіді',
        'Change Auto Response Relations for Queue' => 'Змінити Залежності Авто-Відповідей для Черги',

        # Template: AdminQueueTemplates
        'Manage Template-Queue Relations' => 'Керувати Залежностями Черг-Шаблонів',
        'Filter for Templates' => 'Фільтр по шаблонам',
        'Templates' => 'Шаблони',
        'Change Queue Relations for Template' => 'Змінити Залежності Черг для Шаблона',
        'Change Template Relations for Queue' => 'Змінити Залежності Шаблонів для Черги',

        # Template: AdminRegistration
        'System Registration Management' => 'Керування Регистрацією Системи',
        'Edit details' => 'Редагувати деталі',
        'Show transmitted data' => 'Показати передані дані',
        'Deregister system' => 'Скасувати реєстрацію системи',
        'Overview of registered systems' => 'Огляд зареєстрованих систем',
        'This system is registered with OTRS Group.' => 'Ця система реєстрована OTRS Group.',
        'System type' => 'Тип системи',
        'Unique ID' => 'Унікальний ID',
        'Last communication with registration server' => 'Останній зв\'язок із сервером реєстрації',
        'System registration not possible' => 'Реєстрація системи неможлива',
        'Please note that you can\'t register your system if OTRS Daemon is not running correctly!' =>
            'Будь ласка зверніть увагу, що ви не можете зареєструвати вашу систему якщо фонова програма OTRS не працює правильно!',
        'Instructions' => 'Інструкції',
        'System deregistration not possible' => 'Неможливо скасувати реєстрацію системи',
        'Please note that you can\'t deregister your system if you\'re using the %s or having a valid service contract.' =>
            'Зверніть увагу, що ви не можете скасувати реєстрацію вашої системи якщо ви використовуєте %s або маєте чинну угоду на обслуговування.',
        'OTRS-ID Login' => 'OTRS-ID Ім\'я',
        'Read more' => 'Докладніше',
        'You need to log in with your OTRS-ID to register your system.' =>
            'Ви маєте увійти з вашим ім\'ям OTRS-ID, щоб зареєструвати вашу систему.',
        'Your OTRS-ID is the email address you used to sign up on the OTRS.com webpage.' =>
            'Ваш OTRS-ID це адреса поштової скриньки, якою ви скористалися для реєстрації на сайті OTRS.com',
        'Data Protection' => 'Захист Даних',
        'What are the advantages of system registration?' => 'Які переваги реєстрації системи?',
        'You will receive updates about relevant security releases.' => 'Ви будете отримувати нову інформацію про відповідні оновлення безпеки.',
        'With your system registration we can improve our services for you, because we have all relevant information available.' =>
            'З вашою реєстрацією ви можемо поліпшити наші послуги для вас, тому що в нас є вся необхідна інформація.',
        'This is only the beginning!' => 'Це тільки початок!',
        'We will inform you about our new services and offerings soon.' =>
            'Ми будемо інформувати вас про наші нові послуги та найновіші пропозиції.',
        'Can I use OTRS without being registered?' => 'Чи можу я використовувати OTRS без реєстрації?',
        'System registration is optional.' => 'Реєстрація системи не є обов\'язковою.',
        'You can download and use OTRS without being registered.' => 'Ви можете завантажити та використовувати OTRS без реєстрації.',
        'Is it possible to deregister?' => 'Чи можна скасувати реєстрацію?',
        'You can deregister at any time.' => 'Ви можете скасувати реєстрацію у будь-який час.',
        'Which data is transfered when registering?' => 'Які дані передаються під час реєстрації?',
        'A registered system sends the following data to OTRS Group:' => 'Зареєстрована система надсилає наступні дані до OTRS Group:',
        'Fully Qualified Domain Name (FQDN), OTRS version, Database, Operating System and Perl version.' =>
            'Повне доменне ім\'я (FQDN), версія OTRS, База даних, Операційна система та версія Perl.',
        'Why do I have to provide a description for my system?' => 'Чому я маю надати опис для моєї системи?',
        'The description of the system is optional.' => 'Опис системи не є обов\'язковим.',
        'The description and system type you specify help you to identify and manage the details of your registered systems.' =>
            'Надані вами опис та тип системи допоможе нам визначати та керувати подробицями ваших зареєстрованих систем.',
        'How often does my OTRS system send updates?' => 'Як часто моя OTRS система відправляє оновлення?',
        'Your system will send updates to the registration server at regular intervals.' =>
            'Ваша система буде відправляти оновлення на реєстраційний сервер через регулярні проміжки часу.',
        'Typically this would be around once every three days.' => 'Типово, це буде приблизно один раз в три дні.',
        'Please visit our' => 'Будь ласка, відвідайте наш',
        'portal' => 'портал',
        'and file a request.' => 'та подайте заявку.',
        'If you deregister your system, you will lose these benefits:' =>
            'Якщо скасувати реєстрацію вашої системи, ви втратите ці переваги:',
        'You need to log in with your OTRS-ID to deregister your system.' =>
            'Ви маєте увійти під своїм OTRS-ID щоб скасувати реєстрацію вашої системи.',
        'OTRS-ID' => 'OTRS-ID',
        'You don\'t have an OTRS-ID yet?' => 'У вас ще немає OTRS-ID?',
        'Sign up now' => 'Увійти',
        'Forgot your password?' => 'Забули свій пароль?',
        'Retrieve a new one' => 'Отримати новий',
        'This data will be frequently transferred to OTRS Group when you register this system.' =>
            'Ці дані найчастіше передаються до OTRS Group під час реєстрації системи.',
        'Attribute' => 'Атрибут',
        'FQDN' => 'FQDN',
        'OTRS Version' => 'Версій OTRS',
        'Operating System' => 'Операційна Система',
        'Perl Version' => 'Версія Perl',
        'Optional description of this system.' => 'Додатковий опис цієї системи.',
        'Register' => 'Реєстрація',
        'Deregister System' => 'Скасувати реєстрацію Системи',
        'Continuing with this step will deregister the system from OTRS Group.' =>
            'Продовжуючи далі, ви скасуєте реєстрацію системи від OTRS Group. ',
        'Deregister' => 'Скасувати реєстрацію',
        'You can modify registration settings here.' => 'Тут ви можете змінити налаштування реєстрації.',
        'Overview of transmitted data' => 'Огляд переданих даних',
        'There is no data regularly sent from your system to %s.' => 'Немає даних, що регулярно відправляються з вашої системи до %s.',
        'The following data is sent at minimum every 3 days from your system to %s.' =>
            'Наступні дані надсилаються мінімум раз на 3 дні з вашої системи до %s.',
        'The data will be transferred in JSON format via a secure https connection.' =>
            'Дані будуть надіслані в формати JSON крізь захищене з\'єднання https.',
        'System Registration Data' => 'Система реєстрації даних',
        'Support Data' => 'Дані підтримки',

        # Template: AdminRole
        'Role Management' => 'Керування ролями',
        'Add role' => 'Додати роль',
        'Create a role and put groups in it. Then add the role to the users.' =>
            'Створіть роль і додайте в неї групи. Потім розподілите ролі по користувачах.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            'Ролі не визначені. Будь ласка, використовуйте кнопку \'Додати\' для створення нової ролі.',
        'Add Role' => 'Додати роль',
        'Edit Role' => 'Змінити роль',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => 'Керувати Role-Group відносинами',
        'Filter for Roles' => 'Фільтр для ролей',
        'Roles' => 'Ролі',
        'Select the role:group permissions.' => 'Виберіть дозволи role:group',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            'Якщо нічого не вибрано, для цієї групи немає жодного дозволу (квитки не будуть доступні для цієї ролі).',
        'Change Role Relations for Group' => 'Змінити Залежності Ролі для Групи',
        'Change Group Relations for Role' => 'Змінити Залежності Групи для Ролі',
        'Toggle %s permission for all' => 'Перемикнути %s дозвіл для всіх',
        'move_into' => 'перемістити',
        'Permissions to move tickets into this group/queue.' => 'Права на переміщення заявок у цю групу/черга',
        'create' => 'створення',
        'Permissions to create tickets in this group/queue.' => 'Права на створення заявок у цій групі/черги',
        'note' => 'Замітка',
        'Permissions to add notes to tickets in this group/queue.' => 'Дозвіл додавати замітки до квитків в цій групі/черзі.',
        'owner' => 'власник',
        'Permissions to change the owner of tickets in this group/queue.' =>
            'Дозволи змінювати власника квитків в цій групі/черзі.',
        'priority' => 'пріоритет',
        'Permissions to change the ticket priority in this group/queue.' =>
            'Права на зміну пріоритету заявок у цій групі/черги',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => 'Керування Залежностями Агент-Роль',
        'Add agent' => 'Додати агента',
        'Filter for Agents' => 'Фільтри для Агентів',
        'Agents' => 'Агенти',
        'Manage Role-Agent Relations' => 'Керування Залежностями Роль-Агент',
        'Change Role Relations for Agent' => 'Змінити Залежності Ролі для Агента',
        'Change Agent Relations for Role' => 'Змінити Залежності Агента для Ролі',

        # Template: AdminSLA
        'SLA Management' => 'Керування SLA',
        'Add SLA' => 'Додати SLA',
        'Edit SLA' => 'Змінити SLA',
        'Please write only numbers!' => 'Будь ласка, пишіть тільки цифри!',

        # Template: AdminSMIME
        'S/MIME Management' => 'Керування S/MIME',
        'SMIME support is disabled' => 'Підтримка SMIME відключена',
        'To be able to use SMIME in OTRS, you have to enable it first.' =>
            'Для того, щоб мати можливість використовувати SMIME в OTRS, ви повинні спочатку його дозволити.',
        'Enable SMIME support' => 'Дозволити підтримку ',
        'Faulty SMIME configuration' => 'Неправильне налаштування SMIME ',
        'SMIME support is enabled, but the relevant configuration contains errors. Please check the configuration using the button below.' =>
            'Підтримку SMIME увімкнено, але відповідні налаштування містять помилки. Будь ласка, перевірте налаштування за допомогою кнопки, що розташована нижче.',
        'Check SMIME configuration' => 'Перевірка налаштувань SMIME',
        'Add certificate' => 'Додати сертифікат',
        'Add private key' => 'Додати закритий ключ',
        'Filter for certificates' => 'Фільтр сертифікатів',
        'Filter for S/MIME certs' => 'Фільтр S/MIME сертифікатів',
        'To show certificate details click on a certificate icon.' => 'Щоб показати деталі сертифікату, натисніть на його значок.',
        'To manage private certificate relations click on a private key icon.' =>
            'За для керування залежностями приватного сертифікату натисніть на значок приватного ключа.',
        'Here you can add relations to your private certificate, these will be embedded to the S/MIME signature every time you use this certificate to sign an email.' =>
            'Тут ви можете додати залежності до вашого приватного сертифікату, вони будуть вбудовані в підпис S/MIME щоразу, коли ви використовуєте цей сертифікат, щоб підписати лист.',
        'See also' => 'Див. також',
        'In this way you can directly edit the certification and private keys in file system.' =>
            'Ви можете редагувати сертифікати й закриті ключі прямо на файловій системі',
        'Hash' => 'Хеш',
        'Handle related certificates' => 'Обробляти залежні сертифікати',
        'Read certificate' => 'Прочитати сертифікат',
        'Delete this certificate' => 'Вилучити сертифікат',
        'Add Certificate' => 'Додати сертифікат',
        'Add Private Key' => 'Додати закритий ключ',
        'Secret' => 'Пароль',
        'Related Certificates for' => 'Пов\'язаний сертифікат із',
        'Delete this relation' => 'Вилучити цю залежність',
        'Available Certificates' => 'Доступні Сертифікати',
        'Relate this certificate' => 'Зіставити цей сертифікат',

        # Template: AdminSMIMECertRead
        'Close dialog' => 'Закрити діалог',
        'Certificate details' => 'Деталі сертифікату',

        # Template: AdminSalutation
        'Salutation Management' => 'Керування вітаннями',
        'Add salutation' => 'Додати привітання',
        'Add Salutation' => 'Додати вітання',
        'Edit Salutation' => 'Редагувати вітання',
        'e. g.' => 'наприклад,',
        'Example salutation' => 'Приклад вітання',

        # Template: AdminSecureMode
        'Secure mode needs to be enabled!' => ' Необхідно включити безпечний режим',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            'Після установки системи звичайно відразу ж включають безпечний режим.',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            'Якщо безпечний режим не активований, активуйте його за допомогою SysConfig, тому що ваш додаток вже запущений.',

        # Template: AdminSelectBox
        'SQL Box' => 'Запит SQL',
        'Here you can enter SQL to send it directly to the application database. It is not possible to change the content of the tables, only select queries are allowed.' =>
            'Тут ви можете ввести SQL, щоб надіслати його безпосередньо до бази даних програми. Цим неможливо змінити вміст таблиць - дозволені тільки select запити.',
        'Here you can enter SQL to send it directly to the application database.' =>
            'Тут ви можете ввести SQL щоб надіслати його безпосередньо до бази даних програми.',
        'Only select queries are allowed.' => 'Дозволені тільки select запити.',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            'Синтаксис вашого SQL запиту містить помилку. Будь ласка, перевірте його.',
        'There is at least one parameter missing for the binding. Please check it.' =>
            'Існує принаймні, один пропущений параметр за прив\'язки. Будь ласка, перевірте його.',
        'Result format' => 'Формат результату',
        'Run Query' => 'Запустити чергу',
        'Query is executed.' => 'Запит виконується.',

        # Template: AdminService
        'Service Management' => 'Керування сервісами',
        'Add service' => 'Додати сервіс',
        'Add Service' => 'Додати Сервіс',
        'Edit Service' => 'Змінити Сервіс',
        'Service name maximum length is 200 characters (with Sub-service).' =>
            'Максимальна довжина імені служби 200 символів (з під-службами).',
        'Sub-service of' => 'Підсервіс сервісу',

        # Template: AdminSession
        'Session Management' => 'Керування сеансами',
        'All sessions' => 'Усі сеанси',
        'Agent sessions' => 'Сеанси агента',
        'Customer sessions' => 'Сеанси клієнта',
        'Unique agents' => 'Унікальні агенти',
        'Unique customers' => 'Унікальні клієнти',
        'Kill all sessions' => 'Завершити всі сеанси',
        'Kill this session' => 'Завершити сеанс',
        'Session' => 'Сеанс',
        'Kill' => 'Завершити',
        'Detail View for SessionID' => 'Детальний Вид для SessionID',

        # Template: AdminSignature
        'Signature Management' => 'Керування підписами',
        'Add signature' => 'Додати підпис',
        'Add Signature' => 'Додати Підпис',
        'Edit Signature' => 'Змінити підпис',
        'Example signature' => 'Приклад підпису',

        # Template: AdminState
        'State Management' => 'Керування станами',
        'Add state' => 'Додати стан',
        'Please also update the states in SysConfig where needed.' => 'Прохання також оновити стан в SysConfig де це необхідно.',
        'Add State' => 'Додати стан',
        'Edit State' => 'Змінити стан',
        'State type' => 'Тип стану',

        # Template: AdminSupportDataCollector
        'Sending support data to OTRS Group is not possible!' => 'Передача даних по підтримці до OTRS Group не представляється можливим!',
        'Enable Cloud Services' => 'Дозволити Хмарні Служби',
        'This data is sent to OTRS Group on a regular basis. To stop sending this data please update your system registration.' =>
            'Ці дані надсилаються до OTRS Group на регулярній основі. Щоб припинити передачу цієї інформації, будь ласка, поновіть реєстрацію системи.',
        'You can manually trigger the Support Data sending by pressing this button:' =>
            'Ви можете вручну викликати передачу Даних Підтримки натиснувши на цю кнопку:',
        'Send Update' => 'Надіслати Оновлення',
        'Sending Update...' => 'Надсилання оновлення...',
        'Support Data information was successfully sent.' => 'Інформація Даних Підтримки була успішно відправлена.',
        'Was not possible to send Support Data information.' => 'Не було можливості передати Інформацію Даних Підтримки.',
        'Update Result' => 'Оновити Результат',
        'Currently this data is only shown in this system.' => 'Наразі ці дані показані тільки в цій системі.',
        'A support bundle (including: system registration information, support data, a list of installed packages and all locally modified source code files) can be generated by pressing this button:' =>
            'В\'язка підтримки (що містить: відомості про реєстрацію системи, дані підтримки, перелік встановлених пакунків та всі локально змінені файли вихідного коду) може бути згенерована шляхом натискання на цю кнопку:',
        'Generate Support Bundle' => 'Створити В\'язку Підтримки',
        'Generating...' => 'Створення...',
        'It was not possible to generate the Support Bundle.' => 'Не було можливості для створення В\'язки Підтримки.',
        'Generate Result' => 'Сформувати Результат',
        'Support Bundle' => 'В\'язка підтримки',
        'The mail could not be sent' => 'Пошта не може бути відправлена',
        'The support bundle has been generated.' => 'В\'язку підтримки було створено.',
        'Please choose one of the following options.' => 'Будь ласка, виберіть один з наступних варіантів.',
        'Send by Email' => 'Надіслати електронною поштою',
        'The support bundle is too large to send it by email, this option has been disabled.' =>
            'В\'язка підтримки занадто велика, щоб відправити її електронною поштою, ця опція буде вимкнена.',
        'The email address for this user is invalid, this option has been disabled.' =>
            'Адреса електронної пошти для цього користувача не є чинною, цю опцію буде скасовано.',
        'Sending' => 'Відправник',
        'The support bundle will be sent to OTRS Group via email automatically.' =>
            'В\'язку підтримки буде надіслано до OTRS Group електронною поштою автоматично.',
        'Download File' => 'Завантаження файлу',
        'A file containing the support bundle will be downloaded to the local system. Please save the file and send it to the OTRS Group, using an alternate method.' =>
            'Файл, що містить в\'язку підтримки, буде завантажено до локальної системи. Будь ласка, збережіть файл та надішліть його до OTRS Group іншим шляхом.',
        'Error: Support data could not be collected (%s).' => 'Помилка: дані підтримки не можуть бути зібрані (%s).',
        'Details' => 'Подробиці',

        # Template: AdminSysConfig
        'SysConfig' => 'SysConfig',
        'Navigate by searching in %s settings' => 'Переміщатися пошуком в налаштуваннях %s',
        'Navigate by selecting config groups' => 'Переміщатися шляхом вибору конфігурації груп',
        'Download all system config changes' => 'Завантажити всі зміни конфігурації системи',
        'Export settings' => 'Експортувати настроювання',
        'Load SysConfig settings from file' => 'Завантаження налаштувань SysConfig з файлу',
        'Import settings' => 'Імпортувати настроювання',
        'Import Settings' => 'Імпортувати Настроювання',
        'Please enter a search term to look for settings.' => ' Будь ласка, уведіть пошуковий запит для пошуку настроювань.',
        'Subgroup' => 'Підгрупа',
        'Elements' => 'Елементи',

        # Template: AdminSysConfigEdit
        'Edit Config Settings in %s → %s' => 'Редагування налаштувань конфігурації в %s → %s',
        'This setting is read only.' => 'Ці налаштування тільки для читання.',
        'This config item is only available in a higher config level!' =>
            'Цей елемент конфігурації доступний тільки на більш високому рівні конфігурації!',
        'Reset this setting' => 'Скидання цього параметра',
        'Error: this file could not be found.' => 'Помилка: цей файл не може бути знайдений.',
        'Error: this directory could not be found.' => 'Помилка: ця директорія не може бути знайдена.',
        'Error: an invalid value was entered.' => 'Помилка: було введене неприпустиме значення.',
        'Content' => 'Зміст',
        'Remove this entry' => 'Вилучити цей запис',
        'Add entry' => 'Додати запис',
        'Remove entry' => 'Вилучити запис',
        'Add new entry' => 'Додати новий запис',
        'Delete this entry' => 'Вилучити цей запис',
        'Create new entry' => 'Додати новий запис',
        'New group' => 'Нова група',
        'Group ro' => 'Групувати до',
        'Readonly group' => 'Група тільки для читання',
        'New group ro' => 'Нова група',
        'Loader' => 'Завантажувач',
        'File to load for this frontend module' => 'Файл для завантаження для цього зовнішньо-інтерфейсного модуля',
        'New Loader File' => 'Новий Завантажувач файлу',
        'NavBarName' => 'NavBarName',
        'NavBar' => 'NavBar',
        'LinkOption' => 'Посиланя',
        'Block' => 'Розділ',
        'AccessKey' => 'AccessKey',
        'Add NavBar entry' => 'Додати запис NavBar',
        'NavBar module' => 'NavBar модуль',
        'Year' => 'Рік',
        'Month' => 'Місяць',
        'Day' => 'День',
        'Invalid year' => 'Неприпустимий рік',
        'Invalid month' => 'Неприпустимий місяць',
        'Invalid day' => 'Неприпустимий день',
        'Show more' => 'Показати більше',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => 'Керування системними адресами електронної пошти',
        'Add system address' => 'Додати адресу системи',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            'Усі вхідні повідомлення з цією адресою в полі Кому або Копія буде перенаправлена до вибраної черги.',
        'Email address' => 'Email адреса',
        'Display name' => 'Відображуване ім\'я',
        'Add System Email Address' => 'Додати системну Email адресу',
        'Edit System Email Address' => 'Коригувати системну Email адресу',
        'This email address is already used as system email address.' => 'Ця поштова скринька вже використовується як системна.',
        'The display name and email address will be shown on mail you send.' =>
            'Це ім\'я та email адреса будуть показані у ваших відправлених лістах',
        'This system address cannot be set to invalid, because it is used in one or more queue(s).' =>
            'Цю адресу системи не можна зробити нечинною, тому що вона вже використовується, принаймні, в одній з черг.',

        # Template: AdminSystemMaintenance
        'System Maintenance Management' => 'Керування Обслуговуванням Системи',
        'Schedule New System Maintenance' => 'Запланувати Нове Обслуговування Системи',
        'Schedule a system maintenance period for announcing the Agents and Customers the system is down for a time period.' =>
            'Запланувати період обслуговування системи для оголошення попередження Агентам та Клієнтам, що система не буде працювати впродовж визначеного часу.',
        'Some time before this system maintenance starts the users will receive a notification on each screen announcing about this fact.' =>
            'За деякий час до цього обслуговування системи, користувачі будуть отримувати сповіщення на кожному екрані, оголошуючи про цей факт.',
        'Start date' => 'Дата початку',
        'Stop date' => 'Дата закінчення',
        'Delete System Maintenance' => 'Вилучити Обслуговування Системи',
        'Do you really want to delete this scheduled system maintenance?' =>
            'Ви дійсно хочете вилучити це заплановане обслуговування системи?',

        # Template: AdminSystemMaintenanceEdit
        'Edit System Maintenance %s' => 'Редагувати Обслуговування Системи %s',
        'Edit System Maintenance Information' => 'Редагувати Інформацію Обслуговування Системи',
        'Date invalid!' => 'Неприпустима дата!',
        'Login message' => 'Повідомлення входу',
        'Show login message' => 'Показати повідомлення входу',
        'Notify message' => 'Повідомлення сповіщення',
        'Manage Sessions' => 'Керування сесіями',
        'All Sessions' => 'Всі сесії',
        'Agent Sessions' => 'Сесії Агента',
        'Customer Sessions' => 'Сесії Клієнта',
        'Kill all Sessions, except for your own' => 'Припинити всі Сесії за винятком вашої',

        # Template: AdminTemplate
        'Manage Templates' => 'Керування шаблонами',
        'Add template' => 'Додати шаблон',
        'A template is a default text which helps your agents to write faster tickets, answers or forwards.' =>
            'Шаблон являє собою типовий текст, який допомагає вашим агентам швидше писати квитки, відповідати на них або пересилати.',
        'Don\'t forget to add new templates to queues.' => 'Не забувайте додавати нові шаблони до черг.',
        'Do you really want to delete this template?' => 'Ви дійсно бажаєте вилучити цей шаблон?',
        'Add Template' => 'Додати шаблон',
        'Edit Template' => 'Редагувати шаблон',
        'A standard template with this name already exists!' => 'Стандартний шаблон з таким ім\'ям вже існує!',
        'Create type templates only supports this smart tags' => 'Створення типу шаблонів підтримує тільки ці смарт-теги',
        'Example template' => 'Приклад шаблону',
        'The current ticket state is' => 'Поточний стан заявки',
        'Your email address is' => 'Ваш email адреса ',

        # Template: AdminTemplateAttachment
        'Manage Templates <-> Attachments Relations' => 'Керування шаблонами <-> Залежності прикріплень',
        'Filter for Attachments' => 'Фільтр для Прикріплень',
        'Change Template Relations for Attachment' => 'Змінити залежності шаблону для прикріплення',
        'Change Attachment Relations for Template' => 'Змінити залежності прикріплення для шаблону',
        'Toggle active for all' => 'Увімкнути активність для всіх',
        'Link %s to selected %s' => 'Поєднати %s до вибраного %s',

        # Template: AdminType
        'Type Management' => 'Керування типами заявок',
        'Add ticket type' => 'Додати тип заявки',
        'Add Type' => 'Додати тип',
        'Edit Type' => 'Редагувати тип',
        'A type with this name already exists!' => 'Тип з таким ім\'ям вже існує!',

        # Template: AdminUser
        'Agents will be needed to handle tickets.' => 'Для обробки квитків будуть необхідні агенти.',
        'Don\'t forget to add a new agent to groups and/or roles!' => 'Не забудьте додати нового агента до груп та/або ролей!',
        'Please enter a search term to look for agents.' => 'Будь ласка, введіть слово для пошуку, щоб знайти агентів.',
        'Last login' => 'Останній вхід',
        'Switch to agent' => 'Переключитись до агента',
        'Add Agent' => 'Додати Агента',
        'Edit Agent' => 'Редагувати Агента',
        'Title or salutation' => 'Назва або привітання',
        'Firstname' => 'Ім\'я',
        'Lastname' => 'Прізвище',
        'A user with this username already exists!' => 'Користувач з таким ім\'ям вже існує!',
        'Will be auto-generated if left empty.' => 'Буде автоматично створено, якщо залишити порожнім.',
        'Start' => 'Початок',
        'End' => 'Закінчення',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => 'Керувати залежностями Агент-Група',
        'Change Group Relations for Agent' => 'Змінити залежності Групи для Агента',
        'Change Agent Relations for Group' => 'Змінити залежності Агента для Групи',

        # Template: AgentBook
        'Address Book' => 'Адресна книга',
        'Search for a customer' => 'Пошук клієнта',
        'Add email address %s to the To field' => 'Додати адресу електронної пошти %s до поля Кому',
        'Add email address %s to the Cc field' => 'Додати адресу електронної пошти до поля Копія',
        'Add email address %s to the Bcc field' => 'Додати адресу електронної пошти до поля Прихована копія',
        'Apply' => 'Застосувати',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => 'Інформаційний центр Клієнта',

        # Template: AgentCustomerInformationCenterSearch
        'Customer User' => 'Користувач клієнта',

        # Template: AgentCustomerSearch
        'Duplicated entry' => 'Дублювати запис',
        'This address already exists on the address list.' => 'Ця адреса вже є в списку адрес',
        'It is going to be deleted from the field, please try again.' => 'Він буде вилучений з поля, будь ласка, спробуйте ще раз.',

        # Template: AgentCustomerTableView
        'Note: Customer is invalid!' => 'Примітка: Клієнт не є чинним!',
        'Start chat' => 'Почати спілкування',
        'Video call' => 'Відео виклик',
        'Audio call' => 'Аудіо виклик',

        # Template: AgentDaemonInfo
        'The OTRS Daemon is a daemon process that performs asynchronous tasks, e.g. ticket escalation triggering, email sending, etc.' =>
            'OTRS демон це фоновий процес, що виконує асинхронні завдання, на кшталт ввімкнення підвищення квитка, надсилання пошти тощо.',
        'A running OTRS Daemon is mandatory for correct system operation.' =>
            'Демон OTRS, що працює, є обов\'язковою умовою для коректної роботи системи.',
        'Starting the OTRS Daemon' => 'Запуск OTRS демона.',
        'Make sure that the file \'%s\' exists (without .dist extension). This cron job will check every 5 minutes if the OTRS Daemon is running and start it if needed.' =>
            'Переконайтесь в тому, що файл \'%s\' існує (без розширення .dist). Це заплановане завдання буде перевіряти кожні 5 хвилин чи запущений демон OTRS та запустить його за потреби.',
        'Execute \'%s start\' to make sure the cron jobs of the \'otrs\' user are active.' =>
            'Виконайте \'%s start\' щоб впевнитись в тому, заплановані завдання користувача \'otrs\' активні.',
        'After 5 minutes, check that the OTRS Daemon is running in the system (\'bin/otrs.Daemon.pl status\').' =>
            'Після 5 хвилин, переконайтеся, що OTRS демон працює в системі (\'bin/otrs.Daemon.pl status\').',

        # Template: AgentDashboard
        'Dashboard' => 'Панель',

        # Template: AgentDashboardCalendarOverview
        'in' => 'в',

        # Template: AgentDashboardCommon
        'Close this widget' => 'Закрити цей віджет',
        'Available Columns' => 'Доступні колонки',
        'Visible Columns (order by drag & drop)' => 'Видимі стовпці (упорядковуйте шляхом тягни-й-пусти)',

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => 'Підвищені квитки',

        # Template: AgentDashboardCustomerUserList
        'Customer login' => 'Логін клієнта',
        'Customer information' => 'Інформація споживача',
        'Phone ticket' => 'Телефонний квиток',
        'Email ticket' => 'Поштовий квиток',
        '%s open ticket(s) of %s' => '%s відкритий квиток(-ки) %s',
        '%s closed ticket(s) of %s' => '%s закритий квиток(-ки) %s',
        'New phone ticket from %s' => 'Новий телефонний квиток від %s',
        'New email ticket to %s' => 'Новий поштовий квиток від %s',

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s доступний',
        'Please update now.' => 'Обновите зараз',
        'Release Note' => 'Примітка до релізу',
        'Level' => 'Рівень',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => 'Опубліковане %s',

        # Template: AgentDashboardStats
        'The configuration for this statistic widget contains errors, please review your settings.' =>
            'Конфігурація цього статистичного віджета містить помилки, будь ласка, перевірте параметри.',
        'Download as SVG file' => 'Завантажити як SVG-файл',
        'Download as PNG file' => 'Завантажити як PNG-файл',
        'Download as CSV file' => 'Завантажити як CSV-файл',
        'Download as Excel file' => 'Завантажити як файл Екселю',
        'Download as PDF file' => 'Завантажити як PDF-файл',
        'Grouped' => 'Згруповані',
        'Stacked' => 'У стеку',
        'Expanded' => 'Розгорнуто',
        'Stream' => 'Потік',
        'No Data Available.' => 'Немає доступних даних.',
        'Please select a valid graph output format in the configuration of this widget.' =>
            'Будь ласка, виберіть правильний графічний вихідний формат в конфігурації цього віджета.',
        'The content of this statistic is being prepared for you, please be patient.' =>
            'Зміст цієї статистики буде приготовлена для вас, будь ласка, зачекайте.',
        'This statistic can currently not be used because its configuration needs to be corrected by the statistics administrator.' =>
            'Ця статистика наразі не може бути використана тому що її конфігурація має бути виправлена адміністратором статистики.',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => 'Мої заблоковані заявки',
        'My watched tickets' => 'Квитки за якими я спостерігаю',
        'My responsibilities' => 'Мої обов\'язки',
        'Tickets in My Queues' => 'Заявки в моїй черзі',
        'Tickets in My Services' => 'Заявки в Моїх Сервісах',
        'Service Time' => 'Час обслуговування',
        'Remove active filters for this widget.' => 'Скасувати активні фільтри для цього віджету.',

        # Template: AgentDashboardTicketQueueOverview
        'Totals' => 'Загалом',

        # Template: AgentDashboardUserOnline
        'out of office' => 'не при справах',

        # Template: AgentDashboardUserOutOfOffice
        'until' => 'до',

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => 'Заявка заблокована',
        'Undo & close' => 'Скасувати та закрити',

        # Template: AgentInfo
        'Info' => 'Інформація',
        'To accept some news, a license or some changes.' => 'Для того, щоб прийняти якісь новини, ліцензії або деякі зміни.',

        # Template: AgentLinkObject
        'Link Object: %s' => 'Зв\'язати об\'єкт: %s',
        'go to link delete screen' => 'перейдіть за посиланням видалення екрану',
        'Select Target Object' => 'Виберіть Цільовий Об\'єкт',
        'Link object %s with' => 'Поєднання об\'єкту %s з',
        'Unlink Object: %s' => 'Скасувати прив\'язку об\'єкта: %s',
        'go to link add screen' => 'перейдіть за посиланням додавання екрану',

        # Template: AgentOTRSBusinessBlockScreen
        'Unauthorized usage of %s detected' => 'Виявлено несанкційоване використання %s ',
        'If you decide to downgrade to OTRS Free, you will lose all database tables and data related to %s.' =>
            'Якщо ви вирішили повернутися до використання OTRS Free, ви втратите всі таблиці бази даних і дані, що пов\'язані із %s.',

        # Template: AgentPreferences
        'Edit your preferences' => 'Змінити налаштування',
        'Did you know? You can help translating OTRS at %s.' => 'Ви можете допомогти перекласти OTRD в %s.',

        # Template: AgentSpelling
        'Spell Checker' => 'Перевірка орфографії',
        'spelling error(s)' => 'Орфографічні помилки',
        'Apply these changes' => 'Застосувати зміни',

        # Template: AgentStatisticsAdd
        'Statistics » Add' => 'Статистика » Додати',
        'Add New Statistic' => 'Додати Нову Статистику',
        'Dynamic Matrix' => 'Динамічна Матриця',
        'Tabular reporting data where each cell contains a singular data point (e. g. the number of tickets).' =>
            'Табличне представлення даних де кожна комірка містить особливу точку даних (наприклад кількість квитків)',
        'Dynamic List' => 'Динамічний список',
        'Tabular reporting data where each row contains data of one entity (e. g. a ticket).' =>
            'Табличне представлення даних, де кожний рядок містить дані  одного запису (наприклад, квитка).',
        'Static' => 'Статика',
        'Complex statistics that cannot be configured and may return non-tabular data.' =>
            'Складні статистичні дані не можуть бути налаштовані та можуть повернути нетабличні дані',
        'General Specification' => 'Загальні Характеристики',
        'Create Statistic' => 'Створити Статистику',

        # Template: AgentStatisticsEdit
        'Statistics » Edit %s%s — %s' => 'Статистика » Редагувати %s%s — %s',
        'Run now' => 'Запустити зараз',
        'Statistics Preview' => 'Перегляд статистики',
        'Save statistic' => 'Зберегти статистики',

        # Template: AgentStatisticsImport
        'Statistics » Import' => 'Статистика » Імпорт',
        'Import Statistic Configuration' => 'Імпорт Налаштування Статистики',

        # Template: AgentStatisticsOverview
        'Statistics » Overview' => 'Статистика » Перегляд',
        'Statistics' => 'Статистика',
        'Run' => 'Запустити',
        'Edit statistic "%s".' => 'Редагувати статистику "%s".',
        'Export statistic "%s"' => 'Експортувати статистику "%s"',
        'Export statistic %s' => 'Експортувати статистику %s',
        'Delete statistic "%s"' => 'Вилучити статистику "%s"',
        'Delete statistic %s' => 'Вилучити статистику %s',
        'Do you really want to delete this statistic?' => 'Ви справді бажаєте вилучити цю статистику?',

        # Template: AgentStatisticsView
        'Statistics » View %s%s — %s' => 'Статистика » Вигляд %s%s — %s',
        'Statistic Information' => 'Статистична Інформація',
        'Sum rows' => 'Сума рядків',
        'Sum columns' => 'Сума стовпців',
        'Show as dashboard widget' => 'Відобразити як віджет панелі',
        'Cache' => 'Кеш',
        'This statistic contains configuration errors and can currently not be used.' =>
            'Ця статистика містить помилки налаштування та наразі не може використовуватись.',

        # Template: AgentTicketActionCommon
        'Change Free Text of %s%s%s' => 'Змінити Вільний Текст ',
        'Change Owner of %s%s%s' => 'Зміна Власника: %s%s%s',
        'Close %s%s%s' => 'Закрити %s%s%s',
        'Add Note to %s%s%s' => 'Додати замітку до %s%s%s',
        'Set Pending Time for %s%s%s' => 'Встановити Відкладений Час для ',
        'Change Priority of %s%s%s' => 'Змінити Пріоритет ',
        'Change Responsible of %s%s%s' => 'Змінити Відповідального',
        'All fields marked with an asterisk (*) are mandatory.' => 'Всі поля, позначені (*) є обов\'язковими.',
        'Service invalid.' => 'Служба недійсна.',
        'New Owner' => 'Новий власник',
        'Please set a new owner!' => 'Будь ласка вкажіть нового власника!',
        'New Responsible' => 'Новий Відповідальний',
        'Next state' => 'Наступний стан',
        'For all pending* states.' => 'Для всіх станів, що очкують*.',
        'Add Article' => 'Додати замітку',
        'Create an Article' => 'Створити Статтю',
        'Inform agents' => 'Інформувати агентів',
        'Inform involved agents' => 'Інформувати залучених агентів',
        'Here you can select additional agents which should receive a notification regarding the new article.' =>
            'Тут ви можете вибрати додаткових агентів, що мають отримувати повідомлення стосовно нової статті.',
        'Text will also be received by' => 'Текст буде також отриманий',
        'Spell check' => 'Перевірка орфографії',
        'Text Template' => 'Шаблон тексту',
        'Setting a template will overwrite any text or attachment.' => 'Налаштування шаблону перепише будь-який текст або вкладення.',
        'Note type' => 'Тип замітки',

        # Template: AgentTicketBounce
        'Bounce %s%s%s' => 'Повернути %s%s%s',
        'Bounce to' => 'Повернути до',
        'You need a email address.' => 'Вам потрібна адреса електронної пошти.',
        'Need a valid email address or don\'t use a local email address.' =>
            'Потрібна дійсна адреса електронної пошти або не використовуйте локальну адресу електронної пошти.',
        'Next ticket state' => 'Наступний стан заявки',
        'Inform sender' => 'Інформувати відправника',
        'Send mail' => 'Відправити лист',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => 'Масова дія',
        'Send Email' => 'Відправити лист',
        'Merge to' => 'Об\'єднати с',
        'Invalid ticket identifier!' => 'Недійсний ідентифікатор квитка!',
        'Merge to oldest' => 'Об\'єднати із самим старим',
        'Link together' => 'Зв\'язати',
        'Link to parent' => 'Зв\'язати з батьком',
        'Unlock tickets' => 'Розблокувати квитки',
        'Execute Bulk Action' => 'Виконати Масову Дію',

        # Template: AgentTicketCompose
        'Compose Answer for %s%s%s' => 'Написати відповідь для %s%s%s',
        'This address is registered as system address and cannot be used: %s' =>
            'Ця адреса зареєстрована як системна та не може бути використана: %s',
        'Please include at least one recipient' => 'Будь ласка, додайте хоч одного одержувача',
        'Remove Ticket Customer' => 'Вилучити Квиток Клієнта',
        'Please remove this entry and enter a new one with the correct value.' =>
            'Будь ласка, вилучіть цей запис та додайте новий з правильним значенням.',
        'Remove Cc' => 'Вилучити Копія',
        'Remove Bcc' => 'Вилучити Прихована Копія',
        'Address book' => 'Адресна книга',
        'Date Invalid!' => 'Невірна дата!',

        # Template: AgentTicketCustomer
        'Change Customer of %s%s%s' => 'Зміна Клаєнта: %s%s%s',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => 'Заявка по e-mail',
        'Example Template' => 'Приклад шаблону',
        'From queue' => ' Із черги',
        'To customer user' => 'Для користувача',
        'Please include at least one customer user for the ticket.' => 'Будь ласка, додайте хоча б одного користувача-клієнта для квитка.',
        'Select this customer as the main customer.' => 'Виберіть клієнта у якості основного.',
        'Remove Ticket Customer User' => 'Вилучити Користувача-Клієнта',
        'Get all' => 'Отримати всі',

        # Template: AgentTicketEmailOutbound
        'Outbound Email for %s%s%s' => 'Вихідна адреса електронної пошти для %s%s%s',

        # Template: AgentTicketEscalation
        'Ticket %s: first response time is over (%s/%s)!' => 'Квиток %s: час першого відгуку складає більше (%s/%s)!',
        'Ticket %s: first response time will be over in %s/%s!' => 'Квиток %s: час першої відповіді буде більшою на %s/%s!',
        'Ticket %s: update time is over (%s/%s)!' => 'Квиток %s: час оновлення складає більше (',
        'Ticket %s: update time will be over in %s/%s!' => 'Квиток %s: час оновлення буде більше ніж %s/%s!',
        'Ticket %s: solution time is over (%s/%s)!' => 'Квиток %s: час розв\'язання більше ніж (%s/%s)!',
        'Ticket %s: solution time will be over in %s/%s!' => 'Квиток %s: час розв\'язання буде більше ніж %s/%s!',

        # Template: AgentTicketForward
        'Forward %s%s%s' => 'Перенаправити %s%s%s',

        # Template: AgentTicketHistory
        'History of %s%s%s' => 'Історія: %s%s%s',
        'History Content' => 'Історія',
        'Zoom view' => 'Збільшений вид',

        # Template: AgentTicketMerge
        'Merge %s%s%s' => 'Об\'єднати %s%s%s',
        'Merge Settings' => 'Об\'єднати Налаштування',
        'You need to use a ticket number!' => 'Вам необхідно використовувати номер заявки!',
        'A valid ticket number is required.' => 'Треба вказати чинний номер квитка.',
        'Need a valid email address.' => ' Потрібно вірну поштову адресу.',

        # Template: AgentTicketMove
        'Move %s%s%s' => 'Перемістити %s%s%s',
        'New Queue' => 'Нова черга',

        # Template: AgentTicketOverviewMedium
        'Select all' => 'Вибрати всі',
        'No ticket data found.' => 'Не знайдено даних про квитки',
        'Open / Close ticket action menu' => 'Відкрити/Закрити меню дій з квитком',
        'Select this ticket' => 'Вибрати цей квиток',
        'First Response Time' => 'Час до першої відповіді',
        'Update Time' => 'Час до зміни заявки',
        'Solution Time' => 'Час розв\'язку заявки',
        'Move ticket to a different queue' => 'Перемістити заявку в іншу чергу',
        'Change queue' => 'Перемістити в іншу чергу',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => 'Змінити параметри пошуку',
        'Remove active filters for this screen.' => 'Скасувати чинні фільтри на цьому екрані.',
        'Tickets per page' => 'Квитків на сторінку.',

        # Template: AgentTicketOverviewSmall
        'Reset overview' => 'Скинути огляд',
        'Column Filters Form' => 'Фільтри Стовпчиків Форми',

        # Template: AgentTicketPhone
        'Split Into New Phone Ticket' => 'Розділити на Нові Телефонні Квитки',
        'Save Chat Into New Phone Ticket' => 'Зберегти Чат у Новому Телефонному Квитку',
        'Create New Phone Ticket' => 'Заявка по телефону',
        'Please include at least one customer for the ticket.' => 'Будь ласка, вкажіть хоча б одного клієнта для квитка.',
        'To queue' => 'У чергу',
        'Chat protocol' => 'Протокол чату',
        'The chat will be appended as a separate article.' => 'Чат буде додано у якості окремої статті.',

        # Template: AgentTicketPhoneCommon
        'Phone Call for %s%s%s' => 'Телефонний виклик для %s%s%s',

        # Template: AgentTicketPlain
        'View Email Plain Text for %s%s%s' => 'Переглянути простий текст електронного повідомлення для %s%s%s',
        'Plain' => 'Звичайний',
        'Download this email' => 'Завантажити це повідомлення',

        # Template: AgentTicketProcess
        'Create New Process Ticket' => 'Створити Новий  Квиток Процесу',
        'Process' => 'Процес',

        # Template: AgentTicketProcessSmall
        'Enroll Ticket into a Process' => 'Залучити Квиток в Процес',

        # Template: AgentTicketSearch
        'Search template' => 'Шаблон пошуку',
        'Create Template' => 'Створити шаблон',
        'Create New' => 'Створити новий',
        'Profile link' => 'Посилання на профіль',
        'Save changes in template' => 'Зберегти зміни в шаблоні',
        'Filters in use' => 'Фільтри що використовуються',
        'Additional filters' => 'Додаткові фільтри',
        'Add another attribute' => 'Додати ще атрибут',
        'Output' => 'Вивід результатів',
        'Fulltext' => 'Повнотекстовий',
        'Remove' => 'Вилучити',
        'Searches in the attributes From, To, Cc, Subject and the article body, overriding other attributes with the same name.' =>
            'Пошуки в атрибутах Від, Кому, Копія, Тема та тілі статті, перекриваючи інші атрибути з таким же ім\'ям.',
        'CustomerID (complex search)' => 'CustomerID (комплексний пошук)',
        '(e. g. 234*)' => '(наприклад 234*)',
        'CustomerID (exact match)' => 'CustomerID (точний збіг)',
        'Customer User Login (complex search)' => 'Ім\'я користувача-клієнта (комплексний пошук)',
        '(e. g. U51*)' => '(наприклад U51*)',
        'Customer User Login (exact match)' => 'Ім\'я користувача-клієнта (точний збіг)',
        'Attachment Name' => 'Назва Додатка',
        '(e. g. m*file or myfi*)' => '(наприклад m*file або myfi*)',
        'Created in Queue' => 'Створена в черзі',
        'Lock state' => 'Заблокувати стан',
        'Watcher' => 'Спостерігач',
        'Article Create Time (before/after)' => 'Час Створення Статті (до/після)',
        'Article Create Time (between)' => 'Час Створення Статті (поміж)',
        'Invalid date' => 'Нечинна дата',
        'Ticket Create Time (before/after)' => 'Час Створення Квитка (до/після)',
        'Ticket Create Time (between)' => 'Час Створення Квитка (поміж)',
        'Ticket Change Time (before/after)' => 'Час Змінення Квитка (до/після)',
        'Ticket Change Time (between)' => 'Час Змінення Квитка (поміж)',
        'Ticket Last Change Time (before/after)' => 'Час Останнього Змінення Квитка (до/після)',
        'Ticket Last Change Time (between)' => 'Час Останнього Змінення Квитка (поміж)',
        'Ticket Close Time (before/after)' => 'Час Закриття Квитка (до/після)',
        'Ticket Close Time (between)' => 'Час Закриття Квитка (поміж)',
        'Ticket Escalation Time (before/after)' => 'Час Підвищення Квитка (до/після)',
        'Ticket Escalation Time (between)' => 'Час Підвищення Квитка (поміж)',
        'Archive Search' => 'Пошук в архіві',
        'Run search' => 'Запустити пошук',

        # Template: AgentTicketZoom
        'Article filter' => 'Фільтр статті',
        'Article Type' => 'Тип повідомлення',
        'Sender Type' => 'Тип відправника',
        'Save filter settings as default' => 'Зберегти умови фільтра для показу за замовчуванням',
        'Event Type Filter' => 'Фільтр Типу Події',
        'Event Type' => 'Тип Події',
        'Save as default' => 'Зберегти як типовий',
        'Archive' => 'Архів',
        'This ticket is archived.' => 'Цей квиток архивований',
        'Note: Type is invalid!' => 'Примітка: Тип недійсний!',
        'Locked' => 'Блокування',
        'Accounted time' => 'Витрачене на заявку час',
        'Linked Objects' => 'Зв\'язані Об\'єкти',
        'Change Queue' => 'Перемінити черга',
        'There are no dialogs available at this point in the process.' =>
            'На даний момент в цьому процесі немає ніяких діалогових вікон.',
        'This item has no articles yet.' => 'У цього елемента ще немає статей.',
        'Ticket Timeline View' => 'Вигляд Лінії часу Квитка',
        'Article Overview' => 'Огляд Статті',
        'Article(s)' => 'Заявка(и)',
        'Page' => 'Сторінка',
        'Add Filter' => 'Додати фільтр',
        'Set' => 'Установити',
        'Reset Filter' => 'Скинути фільтр',
        'Show one article' => 'Відобразити одну заявку',
        'Show all articles' => 'Відобразити всі заявки',
        'Show Ticket Timeline View' => 'Показати Вид Лінії Часу Квитка',
        'Unread articles' => 'Непрочитані заявки',
        'No.' => 'Номер',
        'Important' => 'Важливо',
        'Unread Article!' => 'Непрочитані заявки!',
        'Incoming message' => 'Вхідне повідомлення',
        'Outgoing message' => 'Вихідні повідомлення',
        'Internal message' => 'Внутрішні повідомлення',
        'Resize' => 'Змінити розмір',
        'Mark this article as read' => 'Позначити цю статтю як прочитану',
        'Show Full Text' => 'Показати увесь текст',
        'Full Article Text' => 'Весь Текст Статті',
        'No more events found. Please try changing the filter settings.' =>
            'Не знайдено більше подій. Будь ласка, спробуйте змінити налаштування фільтрів.',
        'by' => 'ні',
        'To open links in the following article, you might need to press Ctrl or Cmd or Shift key while clicking the link (depending on your browser and OS).' =>
            'Для відкриття посилання в наступній статті, ви маєте натиснути кнопки Ctrl, Cmd або Shift при натисканні на посилання (залежить від вашого браузера та операційної системи).',
        'Close this message' => 'Закрити це повідомлення',
        'Article could not be opened! Perhaps it is on another article page?' =>
            'Статтю не можливо відкрити! Може вона на іншій сторінці статті?',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => 'Щоб захистити вашу приватність, видалений вміст буде заблоковано.',
        'Load blocked content.' => 'Завантажити заблокований вміст.',

        # Template: ChatStartForm
        'First message' => 'Перше повідомлення',

        # Template: CloudServicesDisabled
        'This feature requires cloud services.' => 'Ця функція потребує хмарні служби.',
        'You can' => 'Ви можете',
        'go back to the previous page' => 'повернутися до попередньої сторінки',

        # Template: CustomerError
        'An Error Occurred' => 'Виникла Помилка',
        'Error Details' => 'Деталі помилки',
        'Traceback' => 'Відстеження',

        # Template: CustomerFooter
        'Powered by' => 'Використовується',

        # Template: CustomerFooterJS
        'One or more errors occurred!' => 'Виникла одна чи більше помилок!',
        'Close this dialog' => 'Закрити цей діалог',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            'Не вдалося відкрити спливаюче вікно. Будь ласка, вимкніть всі блокувальники спливаючих вікон для цього додатка.',
        'If you now leave this page, all open popup windows will be closed, too!' =>
            'Якщо ви залишите цю сторінку, всі спливні вікна будуть також зачинені!',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            'Спливні цього екрану вже відкриті. Ви бажаєте закрити їх та натомість завантажити тільки його?',
        'There are currently no elements available to select from.' => 'Наразі немає доступних для вибору елементів на формі.',
        'Please turn off Compatibility Mode in Internet Explorer!' => 'Будь ласка вимкніть Режим Сумісності в Internet Explorer!',
        'The browser you are using is too old.' => 'Ви використовуєте застарий браузер!',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            'OTRS працює з величезною кількістю браузерів, будь ласка, поновіться до одного з них.',
        'Please see the documentation or ask your admin for further information.' =>
            'Будь ласка, зверніться до документації або до адміністратора для отримання додаткової інформації.',
        'Switch to mobile mode' => 'Перемкнути до мобільного режиму',
        'Switch to desktop mode' => 'Перемкнути до режиму робочого столу',
        'Not available' => 'Не доступно',
        'Clear all' => 'Очистити всі',
        'Clear search' => 'Очистити пошук',
        '%s selection(s)...' => '%s вибір(-ори)...',
        'and %s more...' => 'та %s більше...',
        'Filters' => 'Фільтри',
        'Confirm' => 'Підтвердити',
        'You have unanswered chat requests' => 'У вас є запити з чату без відповіді',
        'Accept' => 'Погодитись',
        'Decline' => 'Відмовитись',
        'An internal error occurred.' => 'Виникла внутрішня помилка',
        'Connection error' => 'Помилка з\'єднання',
        'Reload page' => 'Перезавантажити сторінку',
        'Your browser was not able to communicate with OTRS properly, there seems to be something wrong with your network connection. You could either try reloading this page manually or wait until your browser has re-established the connection on its own.' =>
            'Ваш браузер не може правильно спілкуватись з OTRS, схоже щось не так з мережевим підключенням. Ви можете або вручну перезавантажити цю сторінку, або почекати, поки браузер відновить зв\'язок самостійно.',
        'The connection has been re-established after a temporary connection loss. Due to this, elements on this page could have stopped to work correctly. In order to be able to use all elements correctly again, it is strongly recommended to reload this page.' =>
            'Зв\'язок був відновлений після тимчасової втрати. Через це, деякі елементи на цій сторінці можуть бути зупинені, щоб працювати правильно. Для того, щоб мати змогу використовувати всі елементи правильно знову, настійно рекомендується перезавантажити цю сторінку.',

        # Template: CustomerLogin
        'JavaScript Not Available' => 'JavaScript не доступне',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            'Для того, щоб випробувати OTRS, вам необхідно включити JavaScript у вашому браузері.',
        'Browser Warning' => 'Попередження Браузера',
        'One moment please, you are being redirected...' => 'Хвилинку, будь ласка, вас буде перенаправлено...',
        'Login' => 'Вхід',
        'User name' => 'Ім\'я користувача',
        'Your user name' => 'Ваше ім\'я користувача',
        'Your password' => 'Ваш пароль',
        'Forgot password?' => 'Забули пароль?',
        '2 Factor Token' => '2-факторний Токен',
        'Your 2 Factor Token' => 'Ваш 2-факторний Токен',
        'Log In' => 'Увійти',
        'Not yet registered?' => 'Прагнете зареєструватися?',
        'Request new password' => 'Надіслати новий пароль',
        'Your User Name' => 'Логін',
        'A new password will be sent to your email address.' => 'Новий пароль буде надісланий до вашої електронної скриньки.',
        'Create Account' => 'Створити обліковий запис',
        'Please fill out this form to receive login credentials.' => 'Будь ласка, заповніть поля цієї форми щоб отримати реєстраційні дані.',
        'How we should address you' => 'Як ми можемо звертатися до Вас',
        'Your First Name' => 'Ваше Ім\'я',
        'Your Last Name' => 'Ваше Прізвище',
        'Your email address (this will become your username)' => 'Адреса вашої поштової скриньки (це стане вашим ім\'ям користувача)',

        # Template: CustomerNavigationBar
        'Incoming Chat Requests' => 'Вхідні Запити Чату',
        'Edit personal preferences' => 'Редагувати особисті налаштування',
        'Logout %s %s' => 'Вийти %s %s',

        # Template: CustomerRichTextEditor
        'Split Quote' => 'Разділити Цитату',
        'Open link' => 'Відкрити посилання',

        # Template: CustomerTicketMessage
        'Service level agreement' => 'Рівень обслуговування',

        # Template: CustomerTicketOverview
        'Welcome!' => 'Ласкаво просимо!',
        'Please click the button below to create your first ticket.' => 'Будь ласка, натисніть на кнопку нижче, щоб створити ваш перший квиток.',
        'Create your first ticket' => 'Створення вашого першого квитка',

        # Template: CustomerTicketSearch
        'Profile' => 'Параметри',
        'e. g. 10*5155 or 105658*' => 'наприклад, 10*5155 або 105658*',
        'Customer ID' => 'ID клієнта',
        'Fulltext search in tickets (e. g. "John*n" or "Will*")' => 'Повнотекстовий пошук у заявці (наприклад, "Іван*в" або "Петро*")',
        'Recipient' => 'Одержувач',
        'Carbon Copy' => 'Копія',
        'e. g. m*file or myfi*' => 'наприклад m*file або myfi*',
        'Types' => 'Типи',
        'Time restrictions' => 'Тимчасові рамки',
        'No time settings' => 'Немає налаштувань часу',
        'Specific date' => 'Вкажіть дату',
        'Only tickets created' => 'Заявки створені',
        'Date range' => 'Проміжок часу',
        'Only tickets created between' => 'Заявки створені проміжку',
        'Ticket archive system' => 'Система архивації квитків',
        'Save search as template?' => 'Зберегти пошук у якості шаблону?',
        'Save as Template?' => 'Зберегти як шаблон',
        'Save as Template' => 'Зберегти у якості шаблону',
        'Template Name' => 'Ім\'я шаблону',
        'Pick a profile name' => 'Виберіть ім\'я профілю',
        'Output to' => 'Вивести як',

        # Template: CustomerTicketSearchResultShort
        'of' => ' з',
        'Search Results for' => 'Результати пошуку для',
        'Remove this Search Term.' => 'Вилучити цей елемент пошуку',

        # Template: CustomerTicketZoom
        'Start a chat from this ticket' => 'Почати чат з цього квитка',
        'Expand article' => 'Розгорнути статтю',
        'Information' => 'Інформація',
        'Next Steps' => 'Наступний крок',
        'Reply' => 'Відповісти',
        'Chat Protocol' => 'Протокол Чату',

        # Template: DashboardEventsTicketCalendar
        'All-day' => 'Всі дні',
        'Sunday' => 'Неділя',
        'Monday' => 'Понеділок',
        'Tuesday' => 'Вівторок',
        'Wednesday' => 'Середа',
        'Thursday' => 'Четвер',
        'Friday' => 'П\'ятниця',
        'Saturday' => 'Субота',
        'Su' => 'Нд',
        'Mo' => 'Пн',
        'Tu' => 'Бер.',
        'We' => 'ввімкнено',
        'Th' => 'по',
        'Fr' => 'Вт',
        'Sa' => 'Ср',
        'Event Information' => 'Інформація про подію',
        'Ticket fields' => 'Поля квитка',
        'Dynamic fields' => 'Динамічні поля',

        # Template: Datepicker
        'Invalid date (need a future date)!' => 'Неправильна дата (треба вказати дату у майбутньому)!',
        'Invalid date (need a past date)!' => 'Неправильна дата (треба вказати дату у минулому)!',
        'Previous' => 'Попередній',
        'Open date selection' => 'Відкрити вибір дати',

        # Template: Error
        'An error occurred.' => 'Виникла помилка.',
        'Really a bug? 5 out of 10 bug reports result from a wrong or incomplete installation of OTRS.' =>
            'Справді помилка? 5 з 10 повідомлень про помилку пов\'язани з неправильним або неповним встановленням OTRS.',
        'With %s, our experts take care of correct installation and cover your back with support and periodic security updates.' =>
            'З %s, наші фахівці дбають про правильне встановлення та прикривають вас підтримкою та періодичними оновленнями безпеки.',
        'Contact our service team now.' => 'Негайно зверніться до нашої сервісної служби.',
        'Send a bugreport' => 'Відправити повідомлення про помилку',

        # Template: FooterJS
        'Please enter at least one search value or * to find anything.' =>
            'Будь ласка введіть будь-яке пошукове значення або * щоб знайти все.',
        'Please remove the following words from your search as they cannot be searched for:' =>
            'Будь ласка вилучіть наступні слова з вашого пошуку оскільки їх не можна знайти:',
        'Please check the fields marked as red for valid inputs.' => 'Будь ласка, перевірте поля, що відмічені червоним, щодо коректного введення.',
        'Please perform a spell check on the the text first.' => 'Будь ласка, спочатку виконайте перевірку правопису тексту.',
        'Slide the navigation bar' => 'Посунути панель навігації',
        'Unavailable for chat' => 'Недоступно для чату',
        'Available for internal chats only' => 'Доступно тільки для внутрішніх чатів',
        'Available for chats' => 'Доступно для чатів',
        'Please visit the chat manager' => 'Будь ласка, завітайте до керування чатами',
        'New personal chat request' => 'Новий запит особистого чату',
        'New customer chat request' => 'Новий запит клієнтського чату',
        'New public chat request' => 'Новий запит публічного чату',
        'Selected user is not available for chat.' => 'Вибраний користувач не доступний для чату.',
        'New activity' => 'Нова активність',
        'New activity on one of your monitored chats.' => 'Нова активність в одному з чатів за якими ви спостерігаєте.',
        'Your browser does not support video and audio calling.' => 'Ваш браузер не підтримує відео та аудіо виклики.',
        'Selected user is not available for video and audio call.' => 'Вибраний користувач не доступний для відео та аудіо викликів.',
        'Target user\'s browser does not support video and audio calling.' =>
            'Браузер вибраного користувача не підтримує відео та аудіо виклики.',
        'Do you really want to continue?' => 'Ви справді маєте намір продовжити?',
        'Information about the OTRS Daemon' => 'Інформація про демон OTRS',
        'This feature is part of the %s.  Please contact us at %s for an upgrade.' =>
            'Ця функція є частиною %s. Будь ласка, зв\'яжіться з нами за адресою %s для покращення.',
        'Find out more about the %s' => 'Дізнайтесь більше за %s',

        # Template: Header
        'You are logged in as' => 'Ви ввійшли як',

        # Template: Installer
        'JavaScript not available' => 'JavaScript не доступний',
        'Step %s' => 'Крок %s',
        'Database Settings' => 'Налаштування бази даних',
        'General Specifications and Mail Settings' => 'Загальні характеристики та налаштування пошти',
        'Finish' => 'Закінчити',
        'Welcome to %s' => 'Ласкаво просимо до %s',
        'Web site' => 'Веб-сторінка',
        'Mail check successful.' => 'Пошту успішно перевірено.',
        'Error in the mail settings. Please correct and try again.' => 'Помилка в налаштування пошти. Будь ласка виправте та спробуйте знову.',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => 'Налаштування Вихідної пошти',
        'Outbound mail type' => 'Тип',
        'Select outbound mail type.' => 'Вибір типу вихідної пошти.',
        'Outbound mail port' => 'Порт вихідної пошти',
        'Select outbound mail port.' => 'Виберіть порт вихідної пошти.',
        'SMTP host' => 'SMTP сервер',
        'SMTP host.' => 'SMTP сервер.',
        'SMTP authentication' => 'SMTP аутентифікація',
        'Does your SMTP host need authentication?' => 'SMTP сервер вимагає аутентифікацію?',
        'SMTP auth user' => 'Користувач SMTP автентифікації',
        'Username for SMTP auth.' => 'Ім\'я користувача для автентифікації в SMTP.',
        'SMTP auth password' => 'Пароль SMTP автентифікації',
        'Password for SMTP auth.' => 'Пароль для SMTP автентифікації',
        'Configure Inbound Mail' => 'Налаштування вхідної пошти',
        'Inbound mail type' => 'Тип',
        'Select inbound mail type.' => 'Виберіть тип вхідної пошти.',
        'Inbound mail host' => 'Поштовий сервер для вхідної пошти',
        'Inbound mail host.' => 'Хост вхідної пошти.',
        'Inbound mail user' => 'Ім\'я користувача для вхідної пошти',
        'User for inbound mail.' => 'Ім\'я користувача для вхідної пошти.',
        'Inbound mail password' => 'Пароль для вхідної пошти',
        'Password for inbound mail.' => 'Пароль для вхідної пошти.',
        'Result of mail configuration check' => 'Результати перевірки настроювань пошти',
        'Check mail configuration' => 'Перевірити настроювання пошти',
        'Skip this step' => 'Пропустити цей крок',

        # Template: InstallerDBResult
        'Database setup successful!' => 'Базу даних успішно налаштовано!',

        # Template: InstallerDBStart
        'Install Type' => 'Тип установки',
        'Create a new database for OTRS' => 'Створити нову базу даних OTRS',
        'Use an existing database for OTRS' => 'Використати наявну базу даних OTRS',

        # Template: InstallerDBmssql
        'Database name' => 'Ім\'я бази даних',
        'Check database settings' => 'Перевірити налаштування бази даних',
        'Result of database check' => 'Результат перевірки бази даних',
        'Database check successful.' => 'Базу даних перевірено успішно.',
        'Database User' => 'Користувач бази даних',
        'New' => 'Новий',
        'A new database user with limited permissions will be created for this OTRS system.' =>
            'Для цієї системи OTRS буде створено нового користувача бази даних з обмеженими правами.',
        'Repeat Password' => 'Повторити Пароль',
        'Generated password' => 'Створений пароль',

        # Template: InstallerDBmysql
        'Passwords do not match' => 'Паролі не збігаються',

        # Template: InstallerDBoracle
        'SID' => 'SID',
        'Port' => 'Порт',

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            'Щоб використовувати OTRS, виконайте в командному рядку під правами root наступну команду:',
        'Restart your webserver' => ' Запустите знову ваш веб-сервер',
        'After doing so your OTRS is up and running.' => 'Після цих дій система вже запущена.',
        'Start page' => 'Головна сторінка',
        'Your OTRS Team' => 'Команда розроблювачів OTRS',

        # Template: InstallerLicense
        'Don\'t accept license' => 'Не ухвалюю умови ліцензії',
        'Accept license and continue' => 'Погодитися з ліцензією та продовжити далі',

        # Template: InstallerSystem
        'SystemID' => 'SystemID',
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            'Ідентифікатор системи. Кожний номер квитка та кожна ID HTTP-сесії містять цей номер.',
        'System FQDN' => 'Системне FQDN',
        'Fully qualified domain name of your system.' => 'Повне доменне ім\'я вашої системи.',
        'AdminEmail' => 'Поштова скринька Адміністратора',
        'Email address of the system administrator.' => 'Адреса поштової скриньки системного адміністратора.',
        'Organization' => 'Організація',
        'Log' => 'Журнал',
        'LogModule' => 'Модуль Журналювання',
        'Log backend to use.' => 'Механізм журналювання що буде використовуватись',
        'LogFile' => 'Файл журналу',
        'Webfrontend' => 'Веб-інтерфейс',
        'Default language' => 'Типова мова',
        'Default language.' => 'Типова мова.',
        'CheckMXRecord' => 'Перевірити МХ запис',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            'Адреси електронної пошти, що введено вручну, перевіряються з МХ записами, що знайдено в DNS. Не використовуйте цю опцію якщо у вас повільний DNS або він не дозволяє розв\'язувати публічні адреси.',

        # Template: LinkObject
        'Object#' => 'Об\'єкт#',
        'Add links' => 'Додати посилання',
        'Delete links' => 'Вилучити посилання',

        # Template: Login
        'Lost your password?' => 'Забули свій пароль',
        'Request New Password' => 'Вислати новий пароль',
        'Back to login' => 'Повернутися',

        # Template: MetaFloater
        'Scale preview content' => 'Масштабувати перегляд вмісту',
        'Open URL in new tab' => 'Відкрити посилання в новій вкладинці',
        'Close preview' => 'Закрити попередній перегляд',
        'A preview of this website can\'t be provided because it didn\'t allow to be embedded.' =>
            'Попередній перегляд цього сайту неможливий, тому що він не дозволяє бути вбудованим.',

        # Template: MobileNotAvailableWidget
        'Feature not available' => 'Функція недоступна',
        'Sorry, but this feature of OTRS is currently not available for mobile devices. If you\'d like to use it, you can either switch to desktop mode or use your regular desktop device.' =>
            'Вибачте, але ця функція OTRS наразі не доступна для мобільних пристроїв. Якщо ви бажаєте скористатися нею, ви можете увімкнути стільничний режим або використати стаціонарний комп\'ютер.',

        # Template: Motd
        'Message of the Day' => 'Повідомлення Дня',
        'This is the message of the day. You can edit this in %s.' => 'Це повідомлення дня. Ви можете змінити його в %s.',

        # Template: NoPermission
        'Insufficient Rights' => 'Недостатньо прав.',
        'Back to the previous page' => 'Повернутися до попередньої сторінки',

        # Template: Pagination
        'Show first page' => 'Показати першу сторінку',
        'Show previous pages' => 'Показати попередню сторінку',
        'Show page %s' => 'Показати сторінку %s',
        'Show next pages' => 'Показати наступну сторінку',
        'Show last page' => 'Показати останню сторінку',

        # Template: PictureUpload
        'Need FormID!' => 'Треба FormID!',
        'No file found!' => 'Файла не знайдено!',
        'The file is not an image that can be shown inline!' => 'Це не файл зображення що можна вбудувати!',

        # Template: PreferencesNotificationEvent
        'Notification' => 'Повідомлення',
        'No user configurable notifications found.' => 'Немає налаштованих користувачами сповіщень.',
        'Receive messages for notification \'%s\' by transport method \'%s\'.' =>
            'Прийом повідомлень для сповіщення \'%s\' за допомогою транспортного метода \'%s\'.',
        'Please note that you can\'t completely disable notifications marked as mandatory.' =>
            'Будь ласка, зверніть увагу, що ви не можете повністю вимкнути сповіщення, позначені як обов\'язкові.',
        'Sorry, but you can\'t disable all methods for notifications marked as mandatory.' =>
            'Вибачте, але ви не можете вимкнути всі методи для сповіщень, що позначені як обов\'язкові.',
        'Sorry, but you can\'t disable all methods for this notification.' =>
            'Вибачте, але ви не можете вимкнути всі методи для цих сповіщень.',

        # Template: ActivityDialogHeader
        'Process Information' => 'Інформація про процес',
        'Dialog' => 'Діалог',

        # Template: Article
        'Inform Agent' => 'Повідомити агента',

        # Template: PublicDefault
        'Welcome' => 'Ласкаво просимо',
        'This is the default public interface of OTRS! There was no action parameter given.' =>
            'Це типовий публічний інтерфейс OTRS! Не задано жодного дійового параметра.',
        'You could install a custom public module (via the package manager), for example the FAQ module, which has a public interface.' =>
            'Ви можете встановити спеціальний загальнодоступний модуль (через менеджер пакунків), наприклад модуль ЧАП-ів, який має відкритий інтерфейс.',

        # Template: RichTextEditor
        'Remove Quote' => 'Вилучити лапки',

        # Template: GeneralSpecificationsWidget
        'Permissions' => 'Права',
        'You can select one or more groups to define access for different agents.' =>
            'Ви можете вибрати одну чи більше груп для визначення доступу для різних агентів.',
        'Result formats' => 'Формати результату',
        'The selected time periods in the statistic are time zone neutral.' =>
            'Вибрані періоди часу в статистиці є нейтральним часовим поясом.',
        'Create summation row' => 'Створення підсумкового рядка',
        'Generate an additional row containing sums for all data rows.' =>
            'Створити додатковий рядок, що містить суми для всіх рядків з даними.',
        'Create summation column' => 'Створення підсумкового стовпчика',
        'Generate an additional column containing sums for all data columns.' =>
            'Створення додаткового стовпчика, що містить підсумки всіх стовпчиків з даними.',
        'Cache results' => 'Кешувати результати',
        'Stores statistics result data in a cache to be used in subsequent views with the same configuration (requires at least one selected time field).' =>
            'Зберігання даних результатів статистики в кеші для використання в наступних переглядах з тією ж самою конфігурацією (потрібно вибрати принаймні одне поле з часом).',
        'Provide the statistic as a widget that agents can activate in their dashboard.' =>
            'Забезпечує статистику у вигляді віджету, який можуть активувати агенти на своїх панелях.',
        'Please note that enabling the dashboard widget will activate caching for this statistic in the dashboard.' =>
            'Зверніть увагу, що включення до панелі приладів віджета активує кешування для цієї статистики.',
        'If set to invalid end users can not generate the stat.' => 'Статистику не буде створено, якщо вказати недійсних кінцевих користувачів.',

        # Template: PreviewWidget
        'There are problems in the configuration of this statistic:' => 'В налаштуваннях цієї статистики наступні проблеми:',
        'You may now configure the X-axis of your statistic.' => 'Зараз ви маєте налаштувати вісь Х вашої статистики.',
        'This statistic does not provide preview data.' => 'Ця статистика не надає попереднього перегляду.',
        'Preview format:' => 'Формат перегляду:',
        'Please note that the preview uses random data and does not consider data filters.' =>
            'Зверніть увагу, що попередній перегляд використовує випадкові дані, що не враховує використання фільтрів.',
        'Configure X-Axis' => 'Налаштування осі Х',
        'X-axis' => 'Вісь X',
        'Configure Y-Axis' => 'Налаштування осі Y',
        'Y-axis' => 'Вісь Y',
        'Configure Filter' => 'Налаштування Фільтру',

        # Template: RestrictionsWidget
        'Please select only one element or turn off the button \'Fixed\'.' =>
            'Виберіть тільки один пункт або заберіть прапорець «Фіксоване».',
        'Absolute period' => 'Абсолютний Період',
        'Between' => ' Між',
        'Relative period' => 'Відносний період',
        'The past complete %s and the current+upcoming complete %s %s' =>
            'Минулий повний %s та поточний+майбутній повний %s %s',
        'Do not allow changes to this element when the statistic is generated.' =>
            'Не погоджуйтесь на зміни цього елемента коли створюється статистика.',

        # Template: StatsParamsWidget
        'Format' => 'Формат',
        'Exchange Axis' => 'Поміняти осі',
        'Configurable params of static stat' => 'Налаштовувані параметри статичного звіту',
        'No element selected.' => 'Елементи не обрані',
        'Scale' => 'Масштаб',
        'show more' => 'показати більше',
        'show less' => 'показати менше',

        # Template: D3
        'Download SVG' => 'Завантажити SVG',
        'Download PNG' => 'Завантажити PNG',

        # Template: XAxisWidget
        'The selected time period defines the default time frame for this statistic to collect data from.' =>
            'Вибраний період визначає типові межі часу в яких будуть збиратися дані для статистики.',
        'Defines the time unit that will be used to split the selected time period into reporting data points.' =>
            'Визначає одиницю часу, що буде використовуватись для поділу вибраного періоду в даних звітності.',

        # Template: YAxisWidget
        'Please remember that the scale for the Y-axis has to be larger than the scale for the X-axis (e.g. X-axis => Month, Y-Axis => Year).' =>
            'Запам\'ятайте будь ласка, що шкала осі Y має бути більшою ніж шкала осі X (наприклад, вісь Х => Місяць, вісь Y => Рік).',

        # Template: Test
        'OTRS Test Page' => 'Тестова сторінка OTRS',
        'Welcome %s %s' => 'Ласкаво просимо %s %s',
        'Counter' => 'Лічильник',

        # Template: Warning
        'Go back to the previous page' => 'Повернутись до попередньої сторінки',

        # Perl Module: Kernel/Config/Defaults.pm
        'View system log messages.' => 'Перегляд системних повідомлень.',
        'Update and extend your system with software packages.' => 'Відновлення й розширення системи за допомогою програмних пакетів.',

        # Perl Module: Kernel/Modules/AdminACL.pm
        'ACLs could not be Imported due to a unknown error, please check OTRS logs for more information' =>
            'Списки АСL не можуть бути імпортовані через невідому помилку, будь ласка, перевірте журнал OTRS для отримання додаткової інформації.',
        'The following ACLs have been added successfully: %s' => 'Вдало додано наступні списки ACL: %s',
        'The following ACLs have been updated successfully: %s' => 'Вдало поновлено наступні списки ACL: %s',
        'There where errors adding/updating the following ACLs: %s. Please check the log file for more information.' =>
            'Виникли помилки при додаванні/оновленні наступних списків ACL: %s. Будь ласка, перевірте файл журналу для отримання додаткової інформації.',
        'This field is required' => 'Це поле є обов\'язковим',
        'There was an error creating the ACL' => 'При створенні списку ACL виникла помилка',
        'Need ACLID!' => 'Потрібний ACLID!',
        'Could not get data for ACLID %s' => 'Не можу отримати дані для ACLID %s',
        'There was an error updating the ACL' => 'При оновленні списку ACL виникла помилка',
        'There was an error setting the entity sync status.' => 'Під час встановлення статусу синхронізації об\'єкту виникла помилка.',
        'There was an error synchronizing the ACLs.' => 'Під час синхронізації списків ACL виникла помилка.',
        'ACL %s could not be deleted' => 'ACL список %s не може бути видалений',
        'There was an error getting data for ACL with ID %s' => 'При отримані даних для ACL з ID %s виникла помилка.',
        'Exact match' => 'Точний збіг',
        'Negated exact match' => 'Точний збіг заперечується',
        'Regular expression' => 'Регулярний вислів',
        'Regular expression (ignore case)' => 'Регулярний вислів (ігнорувати регістр)',
        'Negated regular expression' => 'Регулярний вислів заперечується',
        'Negated regular expression (ignore case)' => 'Регулярний вислів заперечується (ігнорувати регістр)',

        # Perl Module: Kernel/Modules/AdminCustomerCompany.pm
        'Customer Company %s already exists!' => 'Компанія Клієнта %s вже їснує!',

        # Perl Module: Kernel/Modules/AdminCustomerUser.pm
        'New phone ticket' => 'Нова телефонна заявка',
        'New email ticket' => 'Нова e-mail заявка',

        # Perl Module: Kernel/Modules/AdminDynamicField.pm
        'Fields configuration is not valid' => 'Неправильне налаштування полів',
        'Objects configuration is not valid' => 'Неправильне налаштування об\'єктів',
        'Could not reset Dynamic Field order properly, please check the error log for more details.' =>
            'Не можу правильно скинути  порядок Динамічного Поля, будь ласка перевірте журнал помилок для отримання більш докладної інформації.',

        # Perl Module: Kernel/Modules/AdminDynamicFieldCheckbox.pm
        'Undefined subaction.' => 'Невизначена субдія.',
        'Need %s' => 'Потрібний %s',
        'The field does not contain only ASCII letters and numbers.' => 'Поле не містить жодної ASCII літери або числа.',
        'There is another field with the same name.' => 'Тут вже є інше поле з таким самим ім\'ям.',
        'The field must be numeric.' => 'Поле має бути числовим.',
        'Need ValidID' => 'Потрібний ValidID',
        'Could not create the new field' => 'Не вдалося створити нове поле',
        'Need ID' => 'Потрібний ID',
        'Could not get data for dynamic field %s' => 'Не можу отримати дані для динамічного поля %s',
        'The name for this field should not change.' => 'ім\'я цього поля не повинно змінюватися.',
        'Could not update the field %s' => 'Не можу оновити поле %s',
        'Currently' => 'Наразі',
        'Unchecked' => 'Непозначено',
        'Checked' => 'Позначено',

        # Perl Module: Kernel/Modules/AdminDynamicFieldDateTime.pm
        'Prevent entry of dates in the future' => 'Попередити уведення дати в майбутньому',
        'Prevent entry of dates in the past' => 'Попередити уведення дат в минулому',

        # Perl Module: Kernel/Modules/AdminDynamicFieldDropdown.pm
        'This field value is duplicated.' => 'Значення цього поля дублюється.',

        # Perl Module: Kernel/Modules/AdminEmail.pm
        'Select at least one recipient.' => 'Виберіть принаймні, одного одержувача.',

        # Perl Module: Kernel/Modules/AdminGenericAgent.pm
        'archive tickets' => 'архівувати квитки',
        'restore tickets from archive' => 'відновити квитки з архіву',
        'Need Profile!' => 'Потрібний Профіль!',
        'Got no values to check.' => 'Немає значень для перевірки.',
        'Please remove the following words because they cannot be used for the ticket selection:' =>
            'Будь ласка, вилучіть наступні слова, тому що їх не можна використати для вибору квитка:',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceDebugger.pm
        'Need WebserviceID!' => 'Потрібний WebserviceID!',
        'Could not get data for WebserviceID %s' => 'Неможливо отримати дані для WebserviceID %s',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceInvokerDefault.pm
        'Need InvokerType' => 'Потрібний Тип Активатора',
        'Invoker %s is not registered' => 'Активатор %s не зареєстрований',
        'InvokerType %s is not registered' => 'Тип Активатора %s не зареєстрований',
        'Need Invoker' => 'Потрібний активатор',
        'Could not determine config for invoker %s' => 'Не можу визначити налаштування для активатора %s',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceMappingSimple.pm
        'Could not get registered configuration for action type %s' => 'Не можу отримати зареєстровані налаштування для типу дій %s',
        'Could not get backend for %s %s' => 'Не можу визначити механізм для %s %s',
        'Could not update configuration data for WebserviceID %s' => 'Не можу оновити дані налаштування WebserviceID %s',
        'Keep (leave unchanged)' => 'Полишити (залишити без змін)',
        'Ignore (drop key/value pair)' => 'Ігнорувати (відкинути пари ключ/значення)',
        'Map to (use provided value as default)' => 'Відобразити до (використовувати надане значення як типове)',
        'Exact value(s)' => 'Точне(-і) значення',
        'Ignore (drop Value/value pair)' => 'Ігнорувати (відкинути пари Значення/значення)',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceMappingXSLT.pm
        'Could not find required library %s' => 'Не вдалося знайти необхідну бібліотеку %s',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceOperationDefault.pm
        'Need OperationType' => 'Потрібний Тип Операції',
        'Operation %s is not registered' => 'Операцію %s не зареєстровано',
        'OperationType %s is not registered' => 'Тип операції %s не зареєстровано',
        'Need Operation' => 'Потрібна Операція',
        'Could not determine config for operation %s' => 'Не можу визначити налаштування для операції %s',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceTransportHTTPREST.pm
        'Need Subaction!' => 'Потрібна Субдія',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceWebservice.pm
        'There is another web service with the same name.' => 'Тут вже є інша веб-служба з таким самим ім\'ям.',
        'There was an error updating the web service.' => 'Під час оновлення веб-служби виникла помилка.',
        'Web service "%s" updated!' => 'Веб-службу "%s" оновлено!',
        'There was an error creating the web service.' => 'Під час створення веб-служби виникла помилка.',
        'Web service "%s" created!' => 'Веб-службу "%s" створено!',
        'Need Name!' => 'Потрібно Ім\'я!',
        'Need ExampleWebService!' => 'Потрібний Взірець Веб-служби!',
        'Could not read %s!' => 'Неможливо прочитати %s!',
        'Need a file to import!' => 'Потрібний файл для імпорту!',
        'The imported file has not valid YAML content! Please check OTRS log for details' =>
            'Файл, що імпортується, не має правильного YAML вмісту! Будь ласка, перегляньте OTRS журнал для отримання детальної інформації.',
        'Web service "%s" deleted!' => 'Веб-службу "%s" вилучено!',
        'New Web service' => 'Нова Веб-служба',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceWebserviceHistory.pm
        'Got no WebserviceHistoryID!' => 'WebserviceHistoryID не отримано!',
        'Could not get history data for WebserviceHistoryID %s' => 'Неможливо отримати дані історії для WebserviceHistoryID  %s',

        # Perl Module: Kernel/Modules/AdminNotificationEvent.pm
        'Notification updated!' => 'Сповіщення оновлено!',
        'Notification added!' => 'Сповіщення додано!',
        'There was an error getting data for Notification with ID:%s!' =>
            'Під час отримання даних для Сповіщення з ID:%s виникла помилка!',
        'Unknown Notification %s!' => 'Невідоме Сповіщення %s!',
        'There was an error creating the Notification' => 'Під час створення Сповіщення виникла помилка',
        'Notifications could not be Imported due to a unknown error, please check OTRS logs for more information' =>
            'Через невідому помилку Сповіщення не вдалося імпортувати, будь ласка, перегляньте OTRS-журнали для отримання додаткової інформації.',
        'The following Notifications have been added successfully: %s' =>
            'Вдало додано наступні Сповіщення: %s',
        'The following Notifications have been updated successfully: %s' =>
            'Вдало оновлено наступні Сповіщення: %s',
        'There where errors adding/updating the following Notifications: %s. Please check the log file for more information.' =>
            'Під час додавання/оновлення наступних Сповіщень виникли помилки: %s. Будь ласка, перегляньте файл журналу для отримання більш детальної інформації.',
        'Agent who owns the ticket' => 'Агент, якому належить квиток',
        'Agent who is responsible for the ticket' => 'Агент, який несе відповідальність за квиток',
        'All agents watching the ticket' => 'Всі агенти стежать за квитком',
        'All agents with write permission for the ticket' => 'Всі агенти, що мають дозвіл на запис для квитка',
        'All agents subscribed to the ticket\'s queue' => 'Всі агенти, що підписалися на чергу квитка',
        'All agents subscribed to the ticket\'s service' => 'Всі агенти, що підписалися на службу квитка',
        'All agents subscribed to both the ticket\'s queue and service' =>
            'Всі агенти, що підписалися на чергу та службу квитка',
        'Customer of the ticket' => 'Клієнт, якому належить квиток',
        'Yes, but require at least one active notification method' => 'Так, але потрібний принаймні один активний метод сповіщення.',

        # Perl Module: Kernel/Modules/AdminPGP.pm
        'PGP environment is not working. Please check log for more info!' =>
            'PGP оточення не працює. Будь ласка перегляньте журнал для отримання додаткової інформації.',
        'Need param Key to delete!' => 'Потрібний Ключ, щоб вилучити.',
        'Key %s deleted!' => 'Ключ %s вилучено!',
        'Need param Key to download!' => 'Потрібний Ключ щоб завантажити!',

        # Perl Module: Kernel/Modules/AdminPackageManager.pm
        'Sorry, Apache::Reload is needed as PerlModule and PerlInitHandler in Apache config file. See also scripts/apache2-httpd.include.conf. Alternatively, you can use the command line tool bin/otrs.Console.pl to install packages!' =>
            'На жаль, потрібно вказати Perl-модуль та PerlInitHandler Apache::Reload в файлі налаштувань Apache. Дивись також scripts/apache2-httpd.include.conf. Крім того, ви можете скористатися знаряддям командного рядка bin/otrs.Console.pl для встановлення пакунків!',
        'No such package!' => 'Немає такого пакунка!',
        'No such file %s in package!' => 'Немає файлу %s в пакунку!',
        'No such file %s in local file system!' => 'Немає файлу %s в локальній файловій системі!',
        'Can\'t read %s!' => 'Неможливо прочитати %s!',
        'File is OK' => 'Файл в нормі',
        'Package has locally modified files.' => 'Пакунок має локально змінені файли.',
        'No packages or no new packages found in selected repository.' =>
            'Жодного пакунку або нового пакунку в вибраному сховищі не знайдено.',
        'Package not verified due a communication issue with verification server!' =>
            'Пакунок не перевірено через проблеми зі зв\'язком з сервером перевірки!',
        'Can\'t connect to OTRS Feature Add-on list server!' => 'Неможливо встановити зв\'язок із сервером списку Додаткових функцій OTRS!',
        'Can\'t get OTRS Feature Add-on list from server!' => 'Неможливо отримати список Додаткових функцій OTRS з серверу!',
        'Can\'t get OTRS Feature Add-on from server!' => 'Неможливо отримати Додаткові функції OTRS з серверу!',

        # Perl Module: Kernel/Modules/AdminPostMasterFilter.pm
        'No such filter: %s' => 'Немає такого фільтру: %s',

        # Perl Module: Kernel/Modules/AdminProcessManagement.pm
        'Need ExampleProcesses!' => 'Потрібний Зразок Процесів!',
        'Need ProcessID!' => 'Потрібний ProcessID!',
        'Yes (mandatory)' => 'Так (обов\'язково)',
        'Unknown Process %s!' => 'Незнайомий Процес %s!',
        'There was an error generating a new EntityID for this Process' =>
            'Під час обчислення нового EntityID для цього Процесу виникла помилка',
        'The StateEntityID for state Inactive does not exists' => 'Не існує StateEntityID для неактивного стану',
        'There was an error creating the Process' => 'Виникла помилка під час створення Процесу',
        'There was an error setting the entity sync status for Process entity: %s' =>
            'Виникла помилка під час встановлення статусу об\'єктної синхронізації об\'єкта Процесу: %s',
        'Could not get data for ProcessID %s' => 'Не можу отримати дані для ProcessID %s',
        'There was an error updating the Process' => 'Під час оновлення Процесу виникла помилка',
        'Process: %s could not be deleted' => 'Процес %s не може бути вилучений',
        'There was an error synchronizing the processes.' => 'Під час синхронізації процесів виникла помилка.',
        'The %s:%s is still in use' => '%s:%s ще досі використовується',
        'The %s:%s has a different EntityID' => '%s:%s має інший EntityID',
        'Could not delete %s:%s' => 'Неможливо видалити %s:%s',
        'There was an error setting the entity sync status for %s entity: %s' =>
            'Виникла помилка під час встановлення статусу об\'єктної синхронізації об\'єкта для %s об\'єкту: %s',
        'Could not get %s' => 'Неможливо отримати %s',
        'Need %s!' => 'Потрібний %s!',
        'Process: %s is not Inactive' => 'Процес: %s не є активним',

        # Perl Module: Kernel/Modules/AdminProcessManagementActivity.pm
        'There was an error generating a new EntityID for this Activity' =>
            'Під час створення нового EntityID для цієї Активності виникла помилка',
        'There was an error creating the Activity' => 'Під час створення Активності виникла помилка',
        'There was an error setting the entity sync status for Activity entity: %s' =>
            'Виникла помилка під час встановлення статусу об\'єктної синхронізації для об\'єкта Активності: %s',
        'Need ActivityID!' => 'Потрібний ActivityID!',
        'Could not get data for ActivityID %s' => 'Не можу отримати дані для ActivityID %s',
        'There was an error updating the Activity' => 'Під час оновлення Активності виникла помилка',
        'Missing Parameter: Need Activity and ActivityDialog!' => 'Відсутній параметр: потрібна Активність та Діалог Активності!',
        'Activity not found!' => 'Активність не знайдена!',
        'ActivityDialog not found!' => 'Діалога Активності не знайдено!',
        'ActivityDialog already assigned to Activity. You cannot add an ActivityDialog twice!' =>
            'Діалог Активності вже призначений для Активності. Ви не можете додати Діалог Активності двічі!',
        'Error while saving the Activity to the database!' => 'Під час збереження Активності до бази даних виникла помилка!',
        'This subaction is not valid' => 'Ця піддія неправильна',
        'Edit Activity "%s"' => 'Редагувати Активність "%s"',

        # Perl Module: Kernel/Modules/AdminProcessManagementActivityDialog.pm
        'There was an error generating a new EntityID for this ActivityDialog' =>
            'Під час створення нового EntityID для цього Діалогу Активності виникла помилка',
        'There was an error creating the ActivityDialog' => 'Під час створення Діалогу Активності виникла помилка',
        'There was an error setting the entity sync status for ActivityDialog entity: %s' =>
            'Виникла помилка під час встановлення статусу об\'єктної синхронізації для об\'єкту Діалогу Активності: %s',
        'Need ActivityDialogID!' => 'Потрібний ActivityDialogID!',
        'Could not get data for ActivityDialogID %s' => 'Не можу отримати дані для ActivityDialogID %s',
        'There was an error updating the ActivityDialog' => 'Під час оновлення Діалогу Активності виникла помилка',
        'Edit Activity Dialog "%s"' => 'Редагувати Діалог Активності "%s"',
        'Agent Interface' => 'Інтерфейс агента',
        'Customer Interface' => 'Інтерфейс клієнта',
        'Agent and Customer Interface' => 'Інтерфейс Агента та Клієнта',
        'Do not show Field' => 'Не показувати поле',
        'Show Field' => 'Показувати поле',
        'Show Field As Mandatory' => 'Показувати поле як обов\'язкове',
        'fax' => 'факс',

        # Perl Module: Kernel/Modules/AdminProcessManagementPath.pm
        'Edit Path' => 'Змінити Шлях',

        # Perl Module: Kernel/Modules/AdminProcessManagementTransition.pm
        'There was an error generating a new EntityID for this Transition' =>
            'Під час створення нового EntityID для цього Переходу виникла помилка',
        'There was an error creating the Transition' => 'Під час створення Переходу виникла помилка',
        'There was an error setting the entity sync status for Transition entity: %s' =>
            'Виникла помилка під час встановлення статусу об\'єктної синхронізації для об\'єкту Переходу: %s',
        'Need TransitionID!' => 'Потрібний TransitionID!',
        'Could not get data for TransitionID %s' => 'Не можу отримати дані для TransitionID %s',
        'There was an error updating the Transition' => 'Під час оновлення Переходу виникла помилка',
        'Edit Transition "%s"' => 'Редагувати Перехід "%s"',
        'xor' => 'xor',
        'String' => 'Рядок',
        'Transition validation module' => 'Модуль перевірки Переходу',

        # Perl Module: Kernel/Modules/AdminProcessManagementTransitionAction.pm
        'At least one valid config parameter is required.' => 'Потрібен принаймні один дійсний параметр налаштування.',
        'There was an error generating a new EntityID for this TransitionAction' =>
            'Під час створення нового EntityID для цієї Дії Переходу виникла помилка',
        'There was an error creating the TransitionAction' => 'Під час створення Дії Переходу виникла помилка',
        'There was an error setting the entity sync status for TransitionAction entity: %s' =>
            'Виникла помилка під час встановлення статусу об\'єктної синхронізації для об\'єкту Дії Переходу: %s',
        'Need TransitionActionID!' => 'Потрібна TransitionActionID!',
        'Could not get data for TransitionActionID %s' => 'Не можу отримати дані для TransitionActionID %s',
        'There was an error updating the TransitionAction' => 'Під час оновлення Дії Переходу виникла помилка',
        'Edit Transition Action "%s"' => 'Редагувати Дію Переходу "%s"',
        'Error: Not all keys seem to have values or vice versa.' => 'Помилка: здається не всі ключі мають значення, або навпаки.',

        # Perl Module: Kernel/Modules/AdminQueue.pm
        'Don\'t use :: in queue name!' => 'Не використовуйте :: в імені черги!',
        'Click back and change it!' => 'Натисніть назад та змініть це!',

        # Perl Module: Kernel/Modules/AdminQueueAutoResponse.pm
        'Queues ( without auto responses )' => 'Черги (без автовідповідей)',

        # Perl Module: Kernel/Modules/AdminSMIME.pm
        'S/MIME environment is not working. Please check log for more info!' =>
            'S/MIME оточення не працює. Будь ласка перевірте журнал для більше детальної інформації!',
        'Need param Filename to delete!' => 'Потрібний параметр Ім\'я файлу для вилучення!',
        'Need param Filename to download!' => 'Потрібний параметр Ім\'я файлу для завантаження!',
        'Needed CertFingerprint and CAFingerprint!' => 'Потрібні CertFingerprint та CAFingerprint!',
        'CAFingerprint must be different than CertFingerprint' => 'CAFingerprint має відрізнятись від CertFingerprint',
        'Relation exists!' => 'Стосунок існує!',
        'Relation added!' => 'Стосунок додано!',
        'Impossible to add relation!' => 'Неможливо додати стосунок!',
        'Relation doesn\'t exists' => 'Стосунку не існує',
        'Relation deleted!' => 'Стосунок вилучено!',
        'Impossible to delete relation!' => 'Неможливо видалити стосунок!',
        'Certificate %s could not be read!' => 'Неможливо прочитати сертифікат %s!',
        'Needed Fingerprint' => 'Потрібний цифровий відбиток',

        # Perl Module: Kernel/Modules/AdminSalutation.pm
        'Salutation updated!' => 'Привітання оновлено!',
        'Salutation added!' => 'Привітання додано!',

        # Perl Module: Kernel/Modules/AdminSupportDataCollector.pm
        'File %s could not be read!' => 'Неможливо прочитати файл %s!',

        # Perl Module: Kernel/Modules/AdminSysConfig.pm
        'Import not allowed!' => 'Імпорт не допускається!',
        'Need File!' => 'Потрібний файл!',
        'Can\'t write ConfigItem!' => 'Не можу записати ConfigItem!',

        # Perl Module: Kernel/Modules/AdminSystemMaintenance.pm
        'Start date shouldn\'t be defined after Stop date!' => 'Початкова дата не може бути визначена після кінцевої!',
        'There was an error creating the System Maintenance' => 'Під час створення технічного обслуговування системи виникла помилка',
        'Need SystemMaintenanceID!' => 'Потрібний SystemMaintenanceID!',
        'Could not get data for SystemMaintenanceID %s' => 'Не можу отримати дані для SystemMaintenanceID %s',
        'System Maintenance was saved successfully!' => 'Вдало збережено технічне обслуговування системи!',
        'Session has been killed!' => 'Сесію було завершено!',
        'All sessions have been killed, except for your own.' => 'За винятком вашої особистої сесії, всі інші було завершено.',
        'There was an error updating the System Maintenance' => 'Під час оновлення Технічного обслуговування системи виникла помілка',
        'Was not possible to delete the SystemMaintenance entry: %s!' => 'Не можливо було видалити запис технічного обслуговування системи: %s!',

        # Perl Module: Kernel/Modules/AdminTemplate.pm
        'Template updated!' => 'Шаблон оновлений!',
        'Template added!' => 'Шаблон додано!',

        # Perl Module: Kernel/Modules/AdminType.pm
        'Need Type!' => 'Потрібний Тип!',

        # Perl Module: Kernel/Modules/AgentDashboardCommon.pm
        'No such config for %s' => 'Немає налаштувань для %s',
        'Statistic' => 'Статистика',
        'No preferences for %s!' => 'Немає уподобань для %s!',
        'Can\'t get element data of %s!' => 'Не можу отримати елемент даних %s!',
        'Can\'t get filter content data of %s!' => 'Неможливо отримати дані вмісту фільтру для %s!',
        'Customer Company Name' => 'Найменування Компанії Клієнта',
        'Customer User ID' => 'ID користувача клієнта',

        # Perl Module: Kernel/Modules/AgentLinkObject.pm
        'Need SourceObject and SourceKey!' => 'Потрібні SourceObject та SourceKey!',
        'Please contact the administrator.' => 'Будь ласка, зверніться до адміністратора.',
        'You need ro permission!' => 'Вам потрібен дозвіл на читання (ro)!',
        'Can not delete link with %s!' => 'Не можу вилучити зв\'язок з %s!',
        'Can not create link with %s! Object already linked as %s.' => 'Не можу створити посилання до %s! Об\'єкт вже пов\'язаний із %s.',
        'Can not create link with %s!' => 'Не можу створити зв\'язок з %s!',
        'The object %s cannot link with other object!' => 'Об\'єкт %s не може бути пов\'язаний з іншим об\'єктом!',

        # Perl Module: Kernel/Modules/AgentPreferences.pm
        'Param Group is required!' => 'Необхідний параметр Група!',

        # Perl Module: Kernel/Modules/AgentStatistics.pm
        'Parameter %s is missing.' => 'Параметр %s відсутній.',
        'Invalid Subaction.' => 'Нечинна Піддія.',
        'Statistic could not be imported.' => 'Неможливо імпортувати статистику.',
        'Please upload a valid statistic file.' => 'Будь ласка вивантажте чинний файл статистики.',
        'Export: Need StatID!' => 'Експорт: потрібний StatID!',
        'Delete: Get no StatID!' => 'Вилучення: не можу отримати StatID!',
        'Need StatID!' => 'Потрібний StatID!',
        'Could not load stat.' => 'Не вдалося завантажити статистику.',
        'Could not create statistic.' => 'Не можу створити статистику.',
        'Run: Get no %s!' => 'Виконання: не можу отримати %s!',

        # Perl Module: Kernel/Modules/AgentTicketActionCommon.pm
        'No TicketID is given!' => 'Не надано TicketID!',
        'You need %s permissions!' => 'Вам потрібні дозволи %s!',
        'Could not perform validation on field %s!' => 'Не вдалось виконати перевірку на полі %s!',
        'No subject' => 'Без теми',
        'Previous Owner' => 'Попередній власник',

        # Perl Module: Kernel/Modules/AgentTicketBounce.pm
        '%s is needed!' => 'Потрібний %s!',
        'Plain article not found for article %s!' => 'Для статті %s не знайдено статті зі звичайного тексту!',
        'Article does not belong to ticket %s!' => 'Стаття не відноситься до квитка %s!',
        'Can\'t bounce email!' => 'Не можу повернути лист!',
        'Can\'t send email!' => 'Не можу надіслати листа!',
        'Wrong Subaction!' => 'Помилкова Піддія!',

        # Perl Module: Kernel/Modules/AgentTicketBulk.pm
        'Can\'t lock Tickets, no TicketIDs are given!' => 'Не можу заблокувати квиток, не надано TicketID!',
        'Ticket (%s) is not unlocked!' => 'Квиток (%s) не разблоковано!',
        'Bulk feature is not enabled!' => 'Масову функцію не увімкнено!',
        'No selectable TicketID is given!' => 'Не надано TicketID, який можна вибрати!',
        'You either selected no ticket or only tickets which are locked by other agents.' =>
            'Ви або не вибрали квитка, або вибрали квиток, що заблокований іншим агентом.',
        'You need to select at least one ticket.' => 'Ви маєте вибрати принаймні один квиток.',
        'The following tickets were ignored because they are locked by another agent or you don\'t have write access to these tickets: %s.' =>
            'Наступні квитки було знехтувано тому що їх або заблоковано іншим агентом або ви не маєте дозволу на запис до цих квитків: %s',
        'The following tickets were locked: %s.' => 'Наступні квитки були заблоковані: %s.',

        # Perl Module: Kernel/Modules/AgentTicketCompose.pm
        'Can not determine the ArticleType!' => 'Не можу визначити Тип Статті!',

        # Perl Module: Kernel/Modules/AgentTicketEmail.pm
        'No Subaction!' => 'Немає Піддії!',

        # Perl Module: Kernel/Modules/AgentTicketEmailOutbound.pm
        'Got no TicketID!' => 'Не отримав TicketID!',
        'System Error!' => 'Системна помилка!',

        # Perl Module: Kernel/Modules/AgentTicketEscalationView.pm
        'Invalid Filter: %s!' => 'Нечинний фільтр: %s!',

        # Perl Module: Kernel/Modules/AgentTicketHistory.pm
        'Can\'t show history, no TicketID is given!' => 'Не можу показати історію - не наданий TicketID!',

        # Perl Module: Kernel/Modules/AgentTicketLock.pm
        'Can\'t lock Ticket, no TicketID is given!' => 'Не можу заблокувати Квиток - не наданий TicketID!',
        'Sorry, the current owner is %s!' => 'Вибачте, але зараз власником є %s!',
        'Please become the owner first.' => 'Спочатку станьте власником, будь ласка.',
        'Ticket (ID=%s) is locked by %s!' => 'Квиток (ID = %s) заблокований %s!',
        'Change the owner!' => 'Зміна власника!',

        # Perl Module: Kernel/Modules/AgentTicketMerge.pm
        'Can\'t merge ticket with itself!' => 'Неможливо об\'єднати квиток із собою!',

        # Perl Module: Kernel/Modules/AgentTicketMove.pm
        'You need move permissions!' => 'Вам потрібно перемістити дозволи!',

        # Perl Module: Kernel/Modules/AgentTicketPhone.pm
        'Chat is not active.' => 'Чат не активний.',
        'No permission.' => 'Немає дозволу.',
        '%s has left the chat.' => '%s залишив чат.',
        'This chat has been closed and will be removed in %s hours.' => 'Цей чат закрито та буде вилучена за %s годин.',

        # Perl Module: Kernel/Modules/AgentTicketPlain.pm
        'No ArticleID!' => 'Немає ArticleID!',
        'Can\'t read plain article! Maybe there is no plain email in backend! Read backend message.' =>
            'Неможливо прочитати просту статтю. Можливо немає простого поштового листа в сервері! Читайте повідомлення від сервера.',

        # Perl Module: Kernel/Modules/AgentTicketPrint.pm
        'Need TicketID!' => 'Потрібний TicketID!',
        'printed by' => 'надруковане',
        'Ticket Dynamic Fields' => 'Динамічні Поля Квитка',

        # Perl Module: Kernel/Modules/AgentTicketProcess.pm
        'Couldn\'t get ActivityDialogEntityID "%s"!' => 'Неможливо отримати ActivityDialogEntityID "%s"!',
        'No Process configured!' => 'Не налаштовано Процес!',
        'Process %s is invalid!' => 'Процес %s не є чинним!',
        'Subaction is invalid!' => 'Піддія не є чинною!',
        'Parameter %s is missing in %s.' => 'Параметр %s пропущений в %s.',
        'No ActivityDialog configured for %s in _RenderAjax!' => 'Не налаштовано Діалога Активності для %s в _RenderAjax!',
        'Got no Start ActivityEntityID or Start ActivityDialogEntityID for Process: %s in _GetParam!' =>
            'Не отримано Початкову ActivityEntityID  або Початкову ActivityDialogEntityID для процеса: %s в ',
        'Couldn\'t get Ticket for TicketID: %s in _GetParam!' => 'Неможливо визначити квиток за TicketID: %s в ',
        'Couldn\'t determine ActivityEntityID. DynamicField or Config isn\'t set properly!' =>
            'Не можу визначити ActivityEntityID. Динамічне поле або Налаштування не встановлене належним чином!',
        'Process::Default%s Config Value missing!' => 'Process::Default%s Config Value пропущено!',
        'Got no ProcessEntityID or TicketID and ActivityDialogEntityID!' =>
            'Неможливо визначити ProcessEntityID або TicketID та ActivityDialogEntityID!',
        'Can\'t get StartActivityDialog and StartActivityDialog for the ProcessEntityID "%s"!' =>
            'Неможливо отримати StartActivityDialog та StartActivityDialog для ',
        'Can\'t get Ticket "%s"!' => 'Неможливо отримати Квиток "%s"!',
        'Can\'t get ProcessEntityID or ActivityEntityID for Ticket "%s"!' =>
            'Неможливо отримати ProcessEntityID або ActivityEntityID для Квитка "%s"!',
        'Can\'t get Activity configuration for ActivityEntityID "%s"!' =>
            'Неможливо отримати налаштування Активності для ActivityEntityID "%s"!',
        'Can\'t get ActivityDialog configuration for ActivityDialogEntityID "%s"!' =>
            'Неможливо отримати налаштування Діалогу Активності для ActivityDialogEntityID "%s"!',
        'Can\'t get data for Field "%s" of ActivityDialog "%s"!' => 'Не можу отримати дані для поля "%s" Діалогу Активності "%s"!',
        'PendingTime can just be used if State or StateID is configured for the same ActivityDialog. ActivityDialog: %s!' =>
            'Час очікування може бути використаний якщо Стан, або StateID налаштовані на такий самий Діалог Активності. Діалог Активності: %s!',
        'Pending Date' => 'Наступна дата',
        'for pending* states' => ' для наступних станів* ',
        'ActivityDialogEntityID missing!' => 'Пропущено ActivityDialogEntityID!',
        'Couldn\'t get Config for ActivityDialogEntityID "%s"!' => 'Неможливо отримати налаштування для ',
        'Couldn\'t use CustomerID as an invisible field.' => 'Неможливо використати CustomerID у якості невидимого поля.',
        'Missing ProcessEntityID, check your ActivityDialogHeader.tt!' =>
            'Пропущено ProcessEntityID, перевірте ',
        'No StartActivityDialog or StartActivityDialog for Process "%s" configured!' =>
            'Не налаштований Початковий Діалог Активності або Початковий Діалог Активності для Процесу "%s"!',
        'Couldn\'t create ticket for Process with ProcessEntityID "%s"!' =>
            'Неможливо створити квиток для Процесу з ProcessEntityID "%s"!',
        'Couldn\'t set ProcessEntityID "%s" on TicketID "%s"!' => 'Неможливо встановити ProcessEntityID "%s" в TicketID "%s"!',
        'Couldn\'t set ActivityEntityID "%s" on TicketID "%s"!' => 'Неможливо встановити ActivityEntityID "%s" в TicketID "%s"!',
        'Could not store ActivityDialog, invalid TicketID: %s!' => 'Неможливо зберегти Діалог Активності, нечинний TicketID: %s!',
        'Invalid TicketID: %s!' => 'Нечинний ',
        'Missing ActivityEntityID in Ticket %s!' => 'Пропущено ActivityEntityID у Квитку %s!',
        'This step does not belong anymore to the current activity in process for ticket \'%s%s%s\'! Another user changed this ticket in the meantime. Please close this window and reload the ticket.' =>
            'Цей крок більше не належить до поточної активності в процесі для цього квитка \'%s%s%s\'! Інший користувач тим часом змінив цей квиток. Будь ласка закрийте це вікно та перезавантажте квиток.',
        'Missing ProcessEntityID in Ticket %s!' => 'Пропущено ProcessEntityID в Квитку %s!',
        'Could not set DynamicField value for %s of Ticket with ID "%s" in ActivityDialog "%s"!' =>
            'Неможливо встановити Динамічне Поле для %s Квитка з ID "%s" в Діалозі Активності "%s"!',
        'Could not set PendingTime for Ticket with ID "%s" in ActivityDialog "%s"!' =>
            'Неможливо встановити Час Очікування для Квитка з ID "%s" в Діалозі Активності "%s"!',
        'Wrong ActivityDialog Field config: %s can\'t be Display => 1 / Show field (Please change its configuration to be Display => 0 / Do not show field or Display => 2 / Show field as mandatory)!' =>
            'Неправильне налаштування поля Діалогу Активності: %s не може бути Display => 1 / Показати поле (Будь ласка змініть налаштування так, щоб Display => 0 / Не показувати поле або Display => 2 /  Показати поле як обов\'язкове)!',
        'Could not set %s for Ticket with ID "%s" in ActivityDialog "%s"!' =>
            'Не можу встановити %s для Квитка з ID "%s" в Діалозі Активності "%s"!',
        'Default Config for Process::Default%s missing!' => 'Пропущено типове налаштування для Process::Default%s!',
        'Default Config for Process::Default%s invalid!' => 'Нечинне типове налаштування для  Process::Default%s!',

        # Perl Module: Kernel/Modules/AgentTicketSearch.pm
        'Untitled' => 'Без назви',
        'Customer Name' => 'Ім\'я Клієнта',
        'Invalid Users' => 'Нечинний Користувач',
        'CSV' => 'CSV',
        'Excel' => 'Excel',

        # Perl Module: Kernel/Modules/AgentTicketService.pm
        'Feature not enabled!' => 'Функцію не увімкнено!',

        # Perl Module: Kernel/Modules/AgentTicketWatcher.pm
        'Feature is not active' => 'Функція не активна',

        # Perl Module: Kernel/Modules/AgentTicketZoom.pm
        'Link Deleted' => 'Зв\'язок Вилучений',
        'Ticket Locked' => 'Квиток Заблоковано',
        'Pending Time Set' => 'Встановлення часу очікування',
        'Dynamic Field Updated' => 'Динамічне поле оновлено',
        'Outgoing Email (internal)' => 'Вихідна Пошта (внутрішня)',
        'Ticket Created' => 'Заявка створена',
        'Type Updated' => 'Тип оновлено',
        'Escalation Update Time In Effect' => 'Час Оновлення Підвищення задіяно',
        'Escalation Update Time Stopped' => 'Час Оновлення Підвищення Зупинено',
        'Escalation First Response Time Stopped' => 'Час Першої Відповіді Підвищення зупинено',
        'Customer Updated' => 'Клієнта оновлено',
        'Internal Chat' => 'Внутрішній Чат',
        'Automatic Follow-Up Sent' => 'Автоматичне Відстеження відправлене',
        'Note Added' => 'Нотатку додано',
        'Note Added (Customer)' => 'Нотатку додано (клієнт)',
        'State Updated' => 'Стан оновлений',
        'Outgoing Answer' => 'Вихідна Відповідь',
        'Service Updated' => 'Служба Оновлена',
        'Link Added' => 'Зв\'язок доданий',
        'Incoming Customer Email' => 'Вхідний електронний лист від клієнта',
        'Incoming Web Request' => 'Вхідний Веб-запит',
        'Priority Updated' => 'Приоритет поновлено',
        'Ticket Unlocked' => 'Квиток разблоковано',
        'Outgoing Email' => 'Вихідне Поштове Повідомлення',
        'Title Updated' => 'Заголовок поновлено',
        'Ticket Merged' => 'Квиток Поєднано',
        'Outgoing Phone Call' => 'Вихідний Телефонний Виклик',
        'Forwarded Message' => 'Перенаправлене повідомлення',
        'Removed User Subscription' => 'Вилучений Опис Користувача',
        'Time Accounted' => 'Час Враховано',
        'Incoming Phone Call' => 'Вхідний Телефонний Виклик',
        'System Request.' => 'Системний Запит.',
        'Incoming Follow-Up' => 'Вхідне Відстеження',
        'Automatic Reply Sent' => 'Автоматичну Відповідь Відправлено',
        'Automatic Reject Sent' => 'Автоматичну Відмову Відправлено',
        'Escalation Solution Time In Effect' => 'Час Розв\'язання Підвищення задіяно',
        'Escalation Solution Time Stopped' => 'Час Розв\'язання Підвищення зупинено',
        'Escalation Response Time In Effect' => 'Час Відповіді Підвищення задіяно',
        'Escalation Response Time Stopped' => 'Час Відповіді на Підвищення зупинено',
        'SLA Updated' => 'SLA оновлено',
        'Queue Updated' => 'Чергу оновлено',
        'External Chat' => 'Зовнішній чат',
        'Queue Changed' => 'Чергу змінено',
        'Notification Was Sent' => 'Сповіщення надіслано',
        'We are sorry, you do not have permissions anymore to access this ticket in its current state.' =>
            'На жаль, у вас більше немає прав доступу до цього квитка в його поточному стані.',
        'Can\'t get for ArticleID %s!' => 'Неможливо отримати для ArticleID %s!',
        'Article filter settings were saved.' => 'Налаштування фільтра статей було збережено.',
        'Event type filter settings were saved.' => 'Налаштування фільтру типів подій було збережено.',
        'Need ArticleID!' => 'Потрібний ArticleID!',
        'Invalid ArticleID!' => 'Нечинний ArticleID!',
        'Offline' => 'Офлайн',
        'User is currently offline.' => 'Наразі користувач не в мережі.',
        'User is currently active.' => 'Наразі користувач активний.',
        'Away' => 'Відсутній',
        'User was inactive for a while.' => 'Користувач деякий час неактивний.',
        'Unavailable' => 'Недоступний',
        'User set their status to unavailable.' => 'Користувач встановив свій статус як недосяжний.',
        'Fields with no group' => 'Поля, що не мають груп',
        'View the source for this Article' => 'Переглянути джерело цієї Статті',

        # Perl Module: Kernel/Modules/CustomerTicketAttachment.pm
        'FileID and ArticleID are needed!' => 'Потрібні FileID та ArticleID!',
        'No TicketID for ArticleID (%s)!' => 'Немає TicketID та ArticleID (%s)!',
        'No such attachment (%s)!' => 'Немає такого долучення (%s)!',

        # Perl Module: Kernel/Modules/CustomerTicketMessage.pm
        'Check SysConfig setting for %s::QueueDefault.' => 'Перевірте налаштування SysConfig для %s::QueueDefault.',
        'Check SysConfig setting for %s::TicketTypeDefault.' => 'Перевірте налаштування SysConfig для %s::TicketTypeDefault.',

        # Perl Module: Kernel/Modules/CustomerTicketOverview.pm
        'Need CustomerID!' => 'Потрібний CustomerID!',
        'My Tickets' => 'Мої заявки',
        'Company Tickets' => 'Заявки компанії',
        'Untitled!' => 'Без назви!',

        # Perl Module: Kernel/Modules/CustomerTicketSearch.pm
        'Please remove the following words because they cannot be used for the search:' =>
            'Будь ласка, вилучіть наступні слова, тому що їх не можна використовувати для пошуку:',

        # Perl Module: Kernel/Modules/CustomerTicketZoom.pm
        'Can\'t reopen ticket, not possible in this queue!' => 'Неможливо перевідкрити квиток, неможливо для цієї черги!',
        'Create a new ticket!' => 'Створіть новий квиток!',

        # Perl Module: Kernel/Modules/Installer.pm
        'SecureMode active!' => 'SecureMode активований!',
        'If you want to re-run the Installer, disable the SecureMode in the SysConfig.' =>
            'Якщо вам треба перезапустити інсталятор, вимкніть SecureMode в SysConfig.',
        'Directory "%s" doesn\'t exist!' => 'Тека "%s" не існує!',
        'Configure "Home" in Kernel/Config.pm first!' => 'Спочатку налаштуйте "Home" в Kernel/Config.pm!',
        'File "%s/Kernel/Config.pm" not found!' => 'Файл "%s/Kernel/Config.pm" не знайдено!',
        'Directory "%s" not found!' => 'Теку "%s" не знайдено!',
        'Kernel/Config.pm isn\'t writable!' => 'Kernel/Config.pm не записний!',
        'If you want to use the installer, set the Kernel/Config.pm writable for the webserver user!' =>
            'Якщо ви бажаєте використати інсталятор, встановіть Kernel/Config.pm записним для користувача webserver!',
        'Unknown Check!' => 'Невідома Перевірка!',
        'The check "%s" doesn\'t exist!' => 'Перевірка "%s" не існує!',
        'Database %s' => 'База даний %s',
        'Configure MySQL' => 'Налаштувати MySQL',
        'Configure PostgreSQL' => 'Налаштувати PostgreSQL',
        'Configure Oracle' => 'Налаштувати Oracle',
        'Unknown database type "%s".' => 'Невідомий тип бази даний "%s".',
        'Please go back.' => 'Будь ласка, поверніться.',
        'Install OTRS - Error' => 'Встановлення OTRS - Помилка',
        'File "%s/%s.xml" not found!' => 'Файлу "%s/%s.xml" не знайдено!',
        'Contact your Admin!' => 'Зв\'яжіться з вашим Адміністратором!',
        'Syslog' => 'Системний журнал',
        'Can\'t write Config file!' => 'Не можу записати до файлу Налаштування!',
        'Unknown Subaction %s!' => 'Невідома Піддія %s!',
        'Can\'t connect to database, Perl module DBD::%s not installed!' =>
            'Неможливо під\'єднатися до бази даних, не встановлено Perl-модуль DBD::%s!',
        'Can\'t connect to database, read comment!' => 'Неможливо під\'єднатися до бази даних, читай коментар!',
        'Error: Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            'Помилка: Будь ласка, переконайтеся в тому. що ваша база даних приймає пакунки розміром завбільшки %s МБ (в даний час приймаються пакунки за розміром до %s МБ). Будь ласка адаптуйте установку max_allowed_packet вашої бази даних, щоб уникнути помилок.',
        'Error: Please set the value for innodb_log_file_size on your database to at least %s MB (current: %s MB, recommended: %s MB). For more information, please have a look at %s.' =>
            'Помилка: Будь ласка, встановіть значення для innodb_log_file_size вашої бази даних, принаймні %s МБ (зараз: %s МБ, рекомендовано: %s МБ). Для отримання додаткової інформації, будь ласка, перегляньте %s.',

        # Perl Module: Kernel/Modules/PublicRepository.pm
        'Need config Package::RepositoryAccessRegExp' => 'Потрібне налаштування ',
        'Authentication failed from %s!' => 'Невдала автентифікація з %s!',

        # Perl Module: Kernel/Output/HTML/ArticleCheck/PGP.pm
        'Sent message crypted to recipient!' => 'Відправлене шифроване повідомлення до отримувача!',
        '"PGP SIGNED MESSAGE" header found, but invalid!' => '"PGP SIGNED MESSAGE" заголово знайдено, але він нечинний!',

        # Perl Module: Kernel/Output/HTML/ArticleCheck/SMIME.pm
        '"S/MIME SIGNED MESSAGE" header found, but invalid!' => '"S/MIME SIGNED MESSAGE" заголовок знайдено, але він нечинний!',
        'Ticket decrypted before' => 'Попереднє розшифрування квитка',
        'Impossible to decrypt: private key for email was not found!' => 'Неможливо дешифрувати: не знайдено приватного ключа для адреси електронної пошти!',
        'Successful decryption' => 'Вдале дешифрування',

        # Perl Module: Kernel/Output/HTML/Dashboard/EventsTicketCalendar.pm
        'The start time of a ticket has been set after the end time!' => 'Початковий час квитка було встановлено після кінцевого!',

        # Perl Module: Kernel/Output/HTML/Dashboard/News.pm
        'Can\'t connect to OTRS News server!' => 'Не можу з\'єднатись з сервером новин OTRS!',
        'Can\'t get OTRS News from server!' => 'Неможливо отримати новини OTRS від сервера!',

        # Perl Module: Kernel/Output/HTML/Dashboard/ProductNotify.pm
        'Can\'t connect to Product News server!' => 'Неможливо з\'єднатись з сервером новин продукту!',
        'Can\'t get Product News from server!' => 'Неможливо отримати новини продукту з серверу!',

        # Perl Module: Kernel/Output/HTML/Dashboard/RSS.pm
        'Can\'t connect to %s!' => 'Неможливо з\'єднатись із %s!',

        # Perl Module: Kernel/Output/HTML/Dashboard/TicketGeneric.pm
        'sorted ascending' => 'відсортоване за зростанням',
        'sorted descending' => 'відсортований за спаданням',
        'filter not active' => 'фільтр не активний',
        'filter active' => 'фільтр активний',
        'This ticket has no title or subject' => 'Цей квиток не має заголовка або теми',

        # Perl Module: Kernel/Output/HTML/Layout.pm
        'We are sorry, you do not have permissions anymore to access this ticket in its current state. You can take one of the following actions:' =>
            'На жаль, у вас більше немає прав доступу до цього квитка в його поточному стані. Ви можете вжити наступні дії:',
        'No Permission' => 'Немає прав доступу',

        # Perl Module: Kernel/Output/HTML/Layout/LinkObject.pm
        'Linked as' => 'Пов\'язаний, як',
        'Search Result' => 'Результат Пошуку',

        # Perl Module: Kernel/Output/HTML/LinkObject/Ticket.pm
        'Archive search' => 'Пошук в архіві',

        # Perl Module: Kernel/Output/HTML/Notification/AgentOTRSBusiness.pm
        '%s Upgrade to %s now! %s' => '%s Оновіться до %s зараз! %s',

        # Perl Module: Kernel/Output/HTML/Notification/CustomerSystemMaintenanceCheck.pm
        'A system maintenance period will start at: ' => 'Період обслуговування системи почнеться:',

        # Perl Module: Kernel/Output/HTML/Preferences/Language.pm
        '(in process)' => '(В процесі)',

        # Perl Module: Kernel/Output/HTML/Preferences/NotificationEvent.pm
        'Please make sure you\'ve chosen at least one transport method for mandatory notifications.' =>
            'Будь ласка, переконайтеся в тому, що ви вибрали принаймні один транспортний метод для обов\'язкових сповіщень.',

        # Perl Module: Kernel/Output/HTML/Preferences/OutOfOffice.pm
        'Please specify an end date that is after the start date.' => 'Будь ласка виберіть кінцеву дату, що йде після початкової.',

        # Perl Module: Kernel/Output/HTML/Preferences/Password.pm
        'Please supply your new password!' => 'Будь ласка вкажіть ваш новий пароль!',

        # Perl Module: Kernel/Output/HTML/Statistics/View.pm
        'No (not supported)' => 'Ні (не підтримується)',
        'No past complete or the current+upcoming complete relative time value selected.' =>
            'Не вибрано величину завершеного минулого або поточного + відносного майбутнього часу.',
        'The selected time period is larger than the allowed time period.' =>
            'Вибраний період часу триваліший ніж це дозволено.',
        'No time scale value available for the current selected time scale value on the X axis.' =>
            'Немає значення масштабу часу для поточного обраного значення шкали часу на осі Х.',
        'The selected date is not valid.' => 'Вибрана дата нечинна.',
        'The selected end time is before the start time.' => 'Вибрана кінцева дата передує початковій.',
        'There is something wrong with your time selection.' => 'Щось не так із вашим вибором часу.',
        'Please select only one element or allow modification at stat generation time.' =>
            'Будь ласка виберіть тільки один елемент або дозвольте зміну часу формування статистики.',
        'Please select at least one value of this field or allow modification at stat generation time.' =>
            'Будь ласка виберіть, принаймні, одне значення цього поля або дозвольте зміну часу формування статистики.',
        'Please select one element for the X-axis.' => 'Будь ласка, виберіть один елемент для Х-осі.',
        'You can only use one time element for the Y axis.' => 'Ви можете використати тільки один елемент для осі Y.',
        'You can only use one or two elements for the Y axis.' => 'Ви можете використати один або два елементи для осі Y.',
        'Please select at least one value of this field.' => 'Будь ласка оберіть, принаймні, одне значення для цього поля.',
        'Please provide a value or allow modification at stat generation time.' =>
            'Будь ласка, вкажіть значення або дозвольте зміну часу формування статистики.',
        'Please select a time scale.' => 'Будь ласка, виберіть масштаб часу.',
        'Your reporting time interval is too small, please use a larger time scale.' =>
            'Період звітності занадто малий, будь ласка, вкажіть більший масштаб.',
        'Please remove the following words because they cannot be used for the ticket restrictions: %s.' =>
            'Будь ласка. вилучіть наступні слова, тому що їх не можна використовувати для обмежень доступу квитків: %s',

        # Perl Module: Kernel/Output/HTML/TicketOverviewMenu/Sort.pm
        'Order by' => 'Сортування',

        # Perl Module: Kernel/System/ACL/DB/ACL.pm
        'Couldn\'t read ACL configuration file. Please make sure the file is valid.' =>
            'Не можу прочитати файл налаштувань ACL. Будь ласка, переконайтеся в чинності файлу.',

        # Perl Module: Kernel/System/AuthSession.pm
        'You have exceeded the number of concurrent agents - contact sales@otrs.com.' =>
            'Ви перевищили кількість одночасних агентів - зверніться за адресою sales@otrs.com',
        'Please note that the session limit is almost reached.' => 'Зверніть увагу будь ласка, що обмеження сеансу майже досягнуто.',
        'Login rejected! You have exceeded the maximum number of concurrent Agents! Contact sales@otrs.com immediately!' =>
            'У вході відмовлено! Ви перевищили максимальну кількість одночасно підключених Агентів! Негайно зверніться за адресою sales@otrs.com!',
        'Session per user limit reached!' => 'Досягнуто максимальну кількість користувачів сесії!',

        # Perl Module: Kernel/System/Console/Command/Dev/Tools/Config2Docbook.pm
        'Configuration Options Reference' => 'Посилання на параметри налаштування',
        'This setting can not be changed.' => 'Це налаштування не може бути змінено.',
        'This setting is not active by default.' => 'Це налаштування типово не активне.',
        'This setting can not be deactivated.' => 'Це налаштування не може бути деактивоване.',

        # Perl Module: Kernel/System/CustomerUser.pm
        'Customer user "%s" already exists.' => 'Клієнт "%s" вже існує.',

        # Perl Module: Kernel/System/CustomerUser/DB.pm
        'This email address is already in use for another customer user.' =>
            'Ця адреса поштової скриньки вже використана іншим клієнтом.',

        # Perl Module: Kernel/System/DynamicField/Driver/BaseText.pm
        'e.g. Text or Te*t' => 'наприклад Text або Te*t',

        # Perl Module: Kernel/System/DynamicField/Driver/Checkbox.pm
        'Ignore this field.' => 'Пропустити це поле.',

        # Perl Module: Kernel/System/NotificationEvent.pm
        'Couldn\'t read Notification configuration file. Please make sure the file is valid.' =>
            'Не можу прочитати файл налаштування Сповіщень. Будь ласка, переконайтесь у чинності файлу.',

        # Perl Module: Kernel/System/Package.pm
        'not installed' => 'не встановлено',
        'File is not installed!' => 'Файл не встановлено!',
        'File is different!' => 'Файл інакший!',
        'Can\'t read file!' => 'Не можу прочитати файла!',

        # Perl Module: Kernel/System/ProcessManagement/DB/Process.pm
        'The process "%s" and all of its data has been imported successfully.' =>
            'Процес "%s" та всі його дані вдало імпортовано!',

        # Perl Module: Kernel/System/ProcessManagement/DB/Process/State.pm
        'Inactive' => 'Неактивний',
        'FadeAway' => 'Заникання',

        # Perl Module: Kernel/System/Registration.pm
        'Can\'t get Token from sever' => 'Неможливо отримати Токен від сервера',

        # Perl Module: Kernel/System/Stats.pm
        'Sum' => 'Сума',

        # Perl Module: Kernel/System/Stats/Dynamic/Ticket.pm
        'State Type' => 'Тип Стану',
        'Created Priority' => 'Пріоритет',
        'Created State' => 'Стан',
        'Create Time' => 'Час створення',
        'Close Time' => 'Час закриття',
        'Escalation - First Response Time' => 'Підвищення - Час Першої Відповіді',
        'Escalation - Update Time' => 'Підвищення - Час оновлення',
        'Escalation - Solution Time' => 'Підвищення - Час Розв\'язання',
        'Agent/Owner' => 'Агент (власник)',
        'Created by Agent/Owner' => 'Створене агентом (власником)',
        'CustomerUserLogin' => 'ім\'я користувача-клієнта',
        'CustomerUserLogin (complex search)' => 'Ім\'я користувача-клієнта (комплексний пошук)',
        'CustomerUserLogin (exact match)' => 'Ім\'я користувача-клієнта (точний збіг)',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketAccountedTime.pm
        'Evaluation by' => 'Заблоковане',
        'Ticket/Article Accounted Time' => 'Витрати робочого часу на заявку або повідомлення',
        'Ticket Create Time' => 'Час створення заявки',
        'Ticket Close Time' => 'Час закриття заявки',
        'Accounted time by Agent' => 'Витрати робочого часу по агентах',
        'Total Time' => 'Усього часу',
        'Ticket Average' => 'Середній час розгляду заявки',
        'Ticket Min Time' => 'Мін. час розгляду заявки',
        'Ticket Max Time' => 'Макс. час розгляду заявки',
        'Number of Tickets' => 'Кількість заявок',
        'Article Average' => 'Середній час між повідомленнями',
        'Article Min Time' => 'Мін. час між повідомленнями',
        'Article Max Time' => 'Макс. час між повідомленнями',
        'Number of Articles' => 'Кількість повідомлень',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketList.pm
        'unlimited' => 'необмежений',
        'ascending' => ' По зростанню',
        'descending' => ' По убуванню',
        'Attributes to be printed' => 'Атрибути для печатки',
        'Sort sequence' => 'Порядок сортування',
        'State Historic' => 'Історія Стану',
        'State Type Historic' => 'Історія Типу Стану',
        'Historic Time Range' => 'Межі часу історії',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketSolutionResponseTime.pm
        'Solution Average' => 'Середній час розв\'язання',
        'Solution Min Time' => 'Мінімальний час розв\'язання',
        'Solution Max Time' => 'Максимальний час розв\'язання',
        'Solution Average (affected by escalation configuration)' => 'Середній час розв\'язання (залежить від налаштування підвищення)',
        'Solution Min Time (affected by escalation configuration)' => 'Мінімальний час розв\'язання (залежить від налаштування підвищення)',
        'Solution Max Time (affected by escalation configuration)' => 'Максимальний час розв\'язання (залежить від налаштування підвищення)',
        'Solution Working Time Average (affected by escalation configuration)' =>
            'Середній час роботи над розв\'язанням (залежить від налаштувань підвищення)',
        'Solution Min Working Time (affected by escalation configuration)' =>
            'Мінімальний час роботи над розв\'язанням (залежить від налаштування підвищення)',
        'Solution Max Working Time (affected by escalation configuration)' =>
            'Максимальний час роботи над розв\'язанням (залежить від налаштування підвищення)',
        'First Response Average (affected by escalation configuration)' =>
            'Середній час першої відповіді (залежить від налаштування підвищення)',
        'First Response Min Time (affected by escalation configuration)' =>
            'Мінімальний час першої відповіді (залежить від налаштування підвищення)',
        'First Response Max Time (affected by escalation configuration)' =>
            'Максимальний час першої відповіді (залежить від налаштування підвищення)',
        'First Response Working Time Average (affected by escalation configuration)' =>
            'Середній час роботи над першою відповіддю (залежить від налаштування підвищення)',
        'First Response Min Working Time (affected by escalation configuration)' =>
            'Мінімальний час роботи над першою відповіддю (залежить від налаштування підвищення)',
        'First Response Max Working Time (affected by escalation configuration)' =>
            'Максимальний час роботи над першою відповіддю (залежить від налаштування підвищення)',
        'Number of Tickets (affected by escalation configuration)' => 'Кількість квитків (залежить від налаштування підвищення)',

        # Perl Module: Kernel/System/Stats/Static/StateAction.pm
        'Days' => 'Дні',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/TablePresence.pm
        'Table Presence' => 'Таблиця наявності',
        'Internal Error: Could not open file.' => 'Внутрішня помилка: неможливо відкрити файл',
        'Table Check' => 'Таблиця перевірки',
        'Internal Error: Could not read file.' => 'Внутрішня помилка: неможливо прочитати файл.',
        'Tables found which are not present in the database.' => 'Знайдено таблицю, якої немає в базі даних.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mssql/Size.pm
        'Database Size' => 'Розмір бази даних',
        'Could not determine database size.' => 'Не можу визначити розмір бази даних.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mssql/Version.pm
        'Database Version' => 'Версія бази даних',
        'Could not determine database version.' => 'Не можу визначити версію бази даних.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Charset.pm
        'Client Connection Charset' => 'Набір символів клієнтського зв\'язку',
        'Setting character_set_client needs to be utf8.' => 'Налаштування character_set_client має бути utf8.',
        'Server Database Charset' => 'Набір символів бази даних сервера',
        'Setting character_set_database needs to be UNICODE or UTF8.' => 'Налаштування character_set_database має бути UNICODE або UTF8.',
        'Table Charset' => 'Таблиця набору символів',
        'There were tables found which do not have utf8 as charset.' => 'Знайдено таблицю з набором символів не utfi8.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/InnoDBLogFileSize.pm
        'InnoDB Log File Size' => 'Розмір файлу журналу InnoDB',
        'The setting innodb_log_file_size must be at least 256 MB.' => 'Налаштування innodb_log_file_size має бути, принаймні, 256 МБ.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/MaxAllowedPacket.pm
        'Maximum Query Size' => 'Максимальний розмір вибірки',
        'The setting \'max_allowed_packet\' must be higher than 20 MB.' =>
            'Пункт max_allowed_packet має бути більше 20 МБ.',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Performance.pm
        'Query Cache Size' => '',
        'The setting \'query_cache_size\' should be used (higher than 10 MB but not more than 512 MB).' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/StorageEngine.pm
        'Default Storage Engine' => '',
        'Table Storage Engine' => '',
        'Tables with a different storage engine than the default engine were found.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Version.pm
        'MySQL 5.x or higher is required.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/oracle/NLS.pm
        'NLS_LANG Setting' => '',
        'NLS_LANG must be set to al32utf8 (e.g. GERMAN_GERMANY.AL32UTF8).' =>
            '',
        'NLS_DATE_FORMAT Setting' => '',
        'NLS_DATE_FORMAT must be set to \'YYYY-MM-DD HH24:MI:SS\'.' => '',
        'NLS_DATE_FORMAT Setting SQL Check' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/Charset.pm
        'Setting client_encoding needs to be UNICODE or UTF8.' => '',
        'Setting server_encoding needs to be UNICODE or UTF8.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/DateStyle.pm
        'Date Format' => '',
        'Setting DateStyle needs to be ISO.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/Version.pm
        'PostgreSQL 8.x or higher is required.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskPartitionOTRS.pm
        'OTRS Disk Partition' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskSpace.pm
        'Disk Usage' => '',
        'The partition where OTRS is located is almost full.' => '',
        'The partition where OTRS is located has no disk space problems.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskSpacePartitions.pm
        'Disk Partitions Usage' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Distribution.pm
        'Distribution' => '',
        'Could not determine distribution.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/KernelVersion.pm
        'Kernel Version' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Load.pm
        'System Load' => '',
        'The system load should be at maximum the number of CPUs the system has (e.g. a load of 8 or less on a system with 8 CPUs is OK).' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/PerlModules.pm
        'Perl Modules' => '',
        'Not all required Perl modules are correctly installed.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Swap.pm
        'Free Swap Space (%)' => '',
        'No swap enabled.' => '',
        'Used Swap Space (MB)' => '',
        'There should be more than 60% free swap space.' => '',
        'There should be no more than 200 MB swap space used.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/ConfigSettings.pm
        'OTRS' => '',
        'Config Settings' => '',
        'Could not determine value.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DaemonRunning.pm
        'Daemon' => '',
        'Daemon is running.' => '',
        'Daemon is not running.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DatabaseRecords.pm
        'Database Records' => '',
        'Tickets' => 'Заявки',
        'Ticket History Entries' => '',
        'Articles' => '',
        'Attachments (DB, Without HTML)' => '',
        'Customers With At Least One Ticket' => '',
        'Dynamic Field Values' => '',
        'Invalid Dynamic Fields' => '',
        'Invalid Dynamic Field Values' => '',
        'GenericInterface Webservices' => '',
        'Process Tickets' => '',
        'Months Between First And Last Ticket' => '',
        'Tickets Per Month (avg)' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DefaultSOAPUser.pm
        'Default SOAP Username And Password' => '',
        'Security risk: you use the default setting for SOAP::User and SOAP::Password. Please change it.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DefaultUser.pm
        'Default Admin Password' => '',
        'Security risk: the agent account root@localhost still has the default password. Please change it or invalidate the account.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/ErrorLog.pm
        'Error Log' => '',
        'There are error reports in your system log.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/FQDN.pm
        'FQDN (domain name)' => '',
        'Please configure your FQDN setting.' => '',
        'Domain Name' => '',
        'Your FQDN setting is invalid.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/FileSystemWritable.pm
        'File System Writable' => '',
        'The file system on your OTRS partition is not writable.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/PackageDeployment.pm
        'Package Installation Status' => '',
        'Some packages have locally modified files.' => '',
        'Some packages are not correctly installed.' => '',
        'Package Verification Status' => '',
        'Some packages are not verified by the OTRS Group! It is recommended not to use this packages.' =>
            '',
        'Package Framework Version Status' => '',
        'Some packages are not allowed for the current framework version.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/PackageList.pm
        'Package List' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/SessionConfigSettings.pm
        'Session Config Settings' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/SpoolMails.pm
        'Spooled Emails' => '',
        'There are emails in var/spool that OTRS could not process.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/SystemID.pm
        'Your SystemID setting is invalid, it should only contain digits.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/DefaultType.pm
        'Default Ticket Type' => '',
        'The configured default ticket type is invalid or missing. Please change the setting Ticket::Type::Default and select a valid ticket type.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/IndexModule.pm
        'Ticket Index Module' => '',
        'You have more than 60,000 tickets and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/InvalidUsersWithLockedTickets.pm
        'Invalid Users with Locked Tickets' => '',
        'There are invalid users with locked tickets.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/OpenTickets.pm
        'Open Tickets' => '',
        'You should not have more than 8,000 open tickets in your system.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/SearchIndexModule.pm
        'Ticket Search Index Module' => '',
        'You have more than 50,000 articles and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/StaticDBOrphanedRecords.pm
        'Orphaned Records In ticket_lock_index Table' => '',
        'Table ticket_lock_index contains orphaned records. Please run bin/otrs.Console.pl "Maint::Ticket::QueueIndexCleanup" to clean the StaticDB index.' =>
            '',
        'Orphaned Records In ticket_index Table' => '',
        'Table ticket_index contains orphaned records. Please run bin/otrs.Console.pl "Maint::Ticket::QueueIndexCleanup" to clean the StaticDB index.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/TimeSettings.pm
        'Time Settings' => '',
        'Server time zone' => '',
        'Computed server time offset' => '',
        'OTRS TimeZone setting (global time offset)' => '',
        'TimeZone may only be activated for systems running in UTC.' => '',
        'OTRS TimeZoneUser setting (per-user time zone support)' => '',
        'TimeZoneUser may only be activated for systems running in UTC that don\'t have an OTRS TimeZone set.' =>
            '',
        'OTRS TimeZone setting for calendar ' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/LoadedModules.pm
        'Webserver' => '',
        'Loaded Apache Modules' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/MPMModel.pm
        'MPM model' => '',
        'OTRS requires apache to be run with the \'prefork\' MPM model.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/Performance.pm
        'CGI Accelerator Usage' => '',
        'You should use FastCGI or mod_perl to increase your performance.' =>
            '',
        'mod_deflate Usage' => '',
        'Please install mod_deflate to improve GUI speed.' => '',
        'mod_filter Usage' => '',
        'Please install mod_filter if mod_deflate is used.' => '',
        'mod_headers Usage' => '',
        'Please install mod_headers to improve GUI speed.' => '',
        'Apache::Reload Usage' => '',
        'Apache::Reload or Apache2::Reload should be used as PerlModule and PerlInitHandler to prevent web server restarts when installing and upgrading modules.' =>
            '',
        'Apache2::DBI Usage' => '',
        'Apache2::DBI should be used to get a better performance  with pre-established database connections.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/EnvironmentVariables.pm
        'Environment Variables' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/InternalWebRequest.pm
        'Support Data Collection' => '',
        'Support data could not be collected from the web server.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Version.pm
        'Webserver Version' => '',
        'Could not determine webserver version.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/PluginAsynchronous/OTRS/ConcurrentUsers.pm
        'Concurrent Users Details' => '',
        'Concurrent Users' => '',

        # Perl Module: Kernel/System/SupportDataCollector/PluginBase.pm
        'Unknown' => '',
        'OK' => '',
        'Problem' => '',

        # Perl Module: Kernel/System/Ticket.pm
        'Reset of unlock time.' => '',

        # Perl Module: Kernel/System/Ticket/Event/NotificationEvent/Transport/Email.pm
        'PGP sign only' => '',
        'PGP encrypt only' => '',
        'PGP sign and encrypt' => '',
        'SMIME sign only' => '',
        'SMIME encrypt only' => '',
        'SMIME sign and encrypt' => '',
        'PGP and SMIME not enabled.' => '',
        'Skip notification delivery' => '',
        'Send unsigned notification' => '',
        'Send unencrypted notification' => '',

        # Perl Module: Kernel/System/Web/InterfaceAgent.pm
        'Authentication succeeded, but no user data record is found in the database. Please contact the administrator.' =>
            '',
        'Can`t remove SessionID.' => '',
        'Logout successful.' => '',
        'Error: invalid session.' => '',
        'No Permission to use this frontend module!' => '',

        # Perl Module: Kernel/System/Web/InterfaceCustomer.pm
        'Authentication succeeded, but no customer record is found in the customer backend. Please contact the administrator.' =>
            '',
        'Reset password unsuccessful. Please contact the administrator.' =>
            '',
        'Added via Customer Panel (%s)' => '',
        'Customer user can\'t be added!' => '',
        'Can\'t send account info!' => '',

        # Perl Module: Kernel/System/Web/InterfaceInstaller.pm
        'Action "%s" not found!' => '',

        # Database XML Definition: scripts/database/otrs-initial_insert.xml
        'Group for default access.' => '',
        'Group of all administrators.' => '',
        'Group for statistics access.' => '',
        'All new state types (default: viewable).' => '',
        'All open state types (default: viewable).' => '',
        'All closed state types (default: not viewable).' => '',
        'All \'pending reminder\' state types (default: viewable).' => '',
        'All \'pending auto *\' state types (default: viewable).' => '',
        'All \'removed\' state types (default: not viewable).' => '',
        'State type for merged tickets (default: not viewable).' => '',
        'New ticket created by customer.' => '',
        'Ticket is closed successful.' => '',
        'Ticket is closed unsuccessful.' => '',
        'Open tickets.' => '',
        'Customer removed ticket.' => '',
        'Ticket is pending for agent reminder.' => '',
        'Ticket is pending for automatic close.' => '',
        'State for merged tickets.' => '',
        'system standard salutation (en)' => '',
        'Standard Salutation.' => '',
        'system standard signature (en)' => '',
        'Standard Signature.' => '',
        'Standard Address.' => '',
        'Follow-ups for closed tickets are possible. Ticket will be reopened.' =>
            '',
        'Follow-ups for closed tickets are not possible. No new ticket will be created.' =>
            '',
        'new ticket' => '',
        'Follow-ups for closed tickets are not possible. A new ticket will be created.' =>
            '',
        'Postmaster queue.' => '',
        'All default incoming tickets.' => '',
        'All junk tickets.' => '',
        'All misc tickets.' => '',
        'Automatic reply which will be sent out after a new ticket has been created.' =>
            '',
        'Automatic reject which will be sent out after a follow-up has been rejected (in case queue follow-up option is "reject").' =>
            '',
        'Automatic confirmation which is sent out after a follow-up has been received for a ticket (in case queue follow-up option is "possible").' =>
            '',
        'Automatic response which will be sent out after a follow-up has been rejected and a new ticket has been created (in case queue follow-up option is "new ticket").' =>
            '',
        'Auto remove will be sent out after a customer removed the request.' =>
            '',
        'default reply (after new ticket has been created)' => '',
        'default reject (after follow-up and rejected of a closed ticket)' =>
            '',
        'default follow-up (after a ticket follow-up has been added)' => '',
        'default reject/new ticket created (after closed follow-up with new ticket creation)' =>
            '',
        'Unclassified' => '',
        'tmp_lock' => '',
        'email-notification-ext' => '',
        'email-notification-int' => '',
        'Ticket create notification' => '',
        'You will receive a notification each time a new ticket is created in one of your "My Queues" or "My Services".' =>
            '',
        'Ticket follow-up notification (unlocked)' => '',
        'You will receive a notification if a customer sends a follow-up to an unlocked ticket which is in your "My Queues" or "My Services".' =>
            '',
        'Ticket follow-up notification (locked)' => '',
        'You will receive a notification if a customer sends a follow-up to a locked ticket of which you are the ticket owner or responsible.' =>
            '',
        'You will receive a notification as soon as a ticket owned by you is automatically unlocked.' =>
            '',
        'Ticket owner update notification' => '',
        'Ticket responsible update notification' => '',
        'Ticket new note notification' => '',
        'Ticket queue update notification' => '',
        'You will receive a notification if a ticket is moved into one of your "My Queues".' =>
            '',
        'Ticket pending reminder notification (locked)' => '',
        'Ticket pending reminder notification (unlocked)' => '',
        'Ticket escalation notification' => 'Сповіщення заявок з загостренням',
        'Ticket escalation warning notification' => 'Сповіщення попереджень про загострення заявок',
        'Ticket service update notification' => '',
        'You will receive a notification if a ticket\'s service is changed to one of your "My Services".' =>
            '',

        # SysConfig
        '
Dear Customer,

Unfortunately we could not detect a valid ticket number
in your subject, so this email can\'t be processed.

Please create a new ticket via the customer panel.

Thanks for your help!

 Your Helpdesk Team
' => '',
        ' (work units)' => '',
        '"%s" notification was sent to "%s" by "%s".' => '',
        '"Slim" skin which tries to save screen space for power users.' =>
            '',
        '%s' => '%s',
        '%s time unit(s) accounted. Now total %s time unit(s).' => '',
        '(UserLogin) Firstname Lastname' => '',
        '(UserLogin) Lastname Firstname' => '',
        '(UserLogin) Lastname, Firstname' => '',
        '*** out of office until %s (%s d left) ***' => '',
        '100 (Expert)' => '',
        '200 (Advanced)' => '',
        '300 (Beginner)' => '',
        'A TicketWatcher Module.' => '',
        'A Website' => '',
        'A list of dynamic fields that are merged into the main ticket during a merge operation. Only dynamic fields that are empty in the main ticket will be set.' =>
            '',
        'A picture' => '',
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '',
        'Access Control Lists (ACL)' => '',
        'AccountedTime' => '',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            '',
        'Activates lost password feature for agents, in the agent interface.' =>
            '',
        'Activates lost password feature for customers.' => '',
        'Activates support for customer groups.' => '',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            '',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            '',
        'Activates the ticket archive system search in the customer interface.' =>
            '',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            '',
        'Activates time accounting.' => '',
        'ActivityID' => '',
        'Add an inbound phone call to this ticket' => '',
        'Add an outbound phone call to this ticket' => '',
        'Added email. %s' => '',
        'Added link to ticket "%s".' => '',
        'Added note (%s)' => 'Додано замітку (%s)',
        'Added subscription for user "%s".' => 'Додана підписка для користувача «%s».',
        'Address book of CustomerUser sources.' => '',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            '',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface. The customers email address won\'t be added if the article type is email-internal.' =>
            '',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Admin Area.' => '',
        'After' => '',
        'Agent Name' => '',
        'Agent Name + FromSeparator + System Address Display Name' => '',
        'Agent Preferences.' => '',
        'Agent called customer.' => '',
        'Agent interface article notification module to check PGP.' => '',
        'Agent interface article notification module to check S/MIME.' =>
            '',
        'Agent interface module to access CIC search via nav bar. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface module to access fulltext search via nav bar. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface module to access search profiles via nav bar. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            '',
        'Agent interface notification module to see the number of locked tickets. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface notification module to see the number of tickets an agent is responsible for. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface notification module to see the number of tickets in My Services. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface notification module to see the number of watched tickets. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'AgentCustomerSearch' => '',
        'AgentCustomerSearch.' => '',
        'AgentUserSearch' => '',
        'AgentUserSearch.' => '',
        'Agents <-> Groups' => 'Агенти <-> Групи',
        'Agents <-> Roles' => '',
        'All customer users of a CustomerID' => '',
        'Allows adding notes in the close ticket screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket free text screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket note screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket responsible screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            '',
        'Allows agents to generate individual-related stats.' => '',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            '',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            '',
        'Allows customers to change the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            '',
        'Allows customers to set the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            '',
        'Allows customers to set the ticket service in the customer interface.' =>
            '',
        'Allows customers to set the ticket type in the customer interface. If this is set to \'No\', TicketTypeDefault should be configured.' =>
            '',
        'Allows default services to be selected also for non existing customers.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            '',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            '',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search e. g. ticket title with this kind of conditions like "(*key1*&&*key2*)" or "(*key1*||*key2*)".' =>
            '',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search e. g. ticket title with this kind of conditions like "(*key1*&&*key2*)" or "(*key1*||*key2*)".' =>
            '',
        'Allows extended search conditions in ticket search of the generic agent interface. With this feature you can search e. g. ticket title with this kind of conditions like "(*key1*&&*key2*)" or "(*key1*||*key2*)".' =>
            '',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows invalid agents to generate individual-related stats.' => '',
        'Allows the administrators to login as other customers, via the customer user administration panel.' =>
            '',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            '',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            '',
        'Always show RichText if available' => '',
        'Arabic (Saudi Arabia)' => '',
        'Archive state changed: "%s"' => '',
        'ArticleTree' => '',
        'Attachments <-> Templates' => '',
        'Auto Responses <-> Queues' => '',
        'AutoFollowUp sent to "%s".' => '',
        'AutoReject sent to "%s".' => '',
        'AutoReply sent to "%s".' => '',
        'Automated line break in text messages after x number of chars.' =>
            '',
        'Automatically lock and set owner to current Agent after opening the move ticket screen of the agent interface.' =>
            '',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            '',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled). This will only work by manually actions of the logged in user. It does not work for automated actions e.g. GenericAgent, Postmaster and GenericInterface.' =>
            '',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            '',
        'Balanced white skin by Felix Niklas (slim version).' => '',
        'Balanced white skin by Felix Niklas.' => '',
        'Based on global RichText setting' => '',
        'Basic fulltext index settings. Execute "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild" in order to generate a new index.' =>
            '',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            '',
        'Bounced to "%s".' => 'Повернуте «%s».',
        'Builds an article index right after the article\'s creation.' =>
            '',
        'Bulgarian' => '',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            '',
        'Cache time in seconds for agent authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for customer authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for the DB ACL backend.' => '',
        'Cache time in seconds for the DB process backend.' => '',
        'Cache time in seconds for the SSL certificate attributes.' => '',
        'Cache time in seconds for the ticket process navigation bar output module.' =>
            '',
        'Cache time in seconds for the web service config backend.' => '',
        'Catalan' => '',
        'Change password' => 'Змінити пароль',
        'Change queue!' => '',
        'Change the customer for this ticket' => '',
        'Change the free fields for this ticket' => '',
        'Change the priority for this ticket' => '',
        'Change the responsible for this ticket' => '',
        'Changed priority from "%s" (%s) to "%s" (%s).' => '',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '',
        'Checkbox' => '',
        'Checks if an E-Mail is a followup to an existing ticket by searching the subject for a valid ticket number.' =>
            '',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            '',
        'Checks the availability of OTRS Business Solution™ for this system.' =>
            '',
        'Checks the entitlement status of OTRS Business Solution™.' => '',
        'Chinese (Simplified)' => '',
        'Chinese (Traditional)' => '',
        'Choose for which kind of ticket changes you want to receive notifications.' =>
            'Виберіть, про який тип змін в заявках ви хочете отримувати сповіщення.',
        'Closed tickets (customer user)' => '',
        'Closed tickets (customer)' => '',
        'Cloud Services' => '',
        'Cloud service admin module registration for the transport layer.' =>
            '',
        'Collect support data for asynchronous plug-in modules.' => '',
        'Column ticket filters for Ticket Overviews type "Small".' => '',
        'Columns that can be filtered in the escalation view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the locked view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the queue view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the responsible view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the service view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the status view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the ticket search result view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the watch view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Comment for new history entries in the customer interface.' => '',
        'Comment2' => '',
        'Communication' => '',
        'Company Status' => '',
        'Company Tickets.' => '',
        'Company name which will be included in outgoing emails as an X-Header.' =>
            '',
        'Compat module for AgentZoom to AgentTicketZoom.' => '',
        'Complex' => '',
        'Configure Processes.' => '',
        'Configure and manage ACLs.' => '',
        'Configure any additional readonly mirror databases that you want to use.' =>
            '',
        'Configure sending of support data to OTRS Group for improved support.' =>
            '',
        'Configure which screen should be shown after a new ticket has been created.' =>
            'Налаштуйте, який екран ви будете бачити після створення нової заявки',
        'Configure your own log text for PGP.' => '',
        'Configures a default TicketDynamicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://otrs.github.io/doc/), chapter "Ticket Event Module".' =>
            '',
        'Controls how to display the ticket history entries as readable values.' =>
            '',
        'Controls if CustomerID is automatically copied from the sender address for unknown customers.' =>
            '',
        'Controls if CustomerID is read-only in the agent interface.' => '',
        'Controls if customers have the ability to sort their tickets.' =>
            '',
        'Controls if more than one from entry can be set in the new phone ticket in the agent interface.' =>
            '',
        'Controls if the admin is allowed to import a saved system configuration in SysConfig.' =>
            '',
        'Controls if the admin is allowed to make changes to the database via AdminSelectBox.' =>
            '',
        'Controls if the ticket and article seen flags are removed when a ticket is archived.' =>
            '',
        'Converts HTML mails into text messages.' => '',
        'Create New process ticket.' => '',
        'Create and manage Service Level Agreements (SLAs).' => '',
        'Create and manage agents.' => 'Створення й керування агентами.',
        'Create and manage attachments.' => 'Створення й керування вкладеннями.',
        'Create and manage customer users.' => '',
        'Create and manage customers.' => 'Створення й керування клієнтами.',
        'Create and manage dynamic fields.' => '',
        'Create and manage groups.' => 'Створення й керування групами.',
        'Create and manage queues.' => 'Створення й керування чергами.',
        'Create and manage responses that are automatically sent.' => 'Створення й керування автовідповідями.',
        'Create and manage roles.' => 'Створення й керування ролями.',
        'Create and manage salutations.' => 'Створення й керування вітаннями.',
        'Create and manage services.' => 'Створення й керування сервісами.',
        'Create and manage signatures.' => 'Створення й керування підписами.',
        'Create and manage templates.' => '',
        'Create and manage ticket notifications.' => '',
        'Create and manage ticket priorities.' => 'Створення й керування пріоритетами заявок.',
        'Create and manage ticket states.' => 'Створення й керування станами заявок.',
        'Create and manage ticket types.' => 'Створення й керування типами заявок.',
        'Create and manage web services.' => '',
        'Create new Ticket.' => '',
        'Create new email ticket and send this out (outbound).' => '',
        'Create new email ticket.' => '',
        'Create new phone ticket (inbound).' => '',
        'Create new phone ticket.' => '',
        'Create new process ticket.' => '',
        'Create tickets.' => '',
        'Croatian' => '',
        'Custom RSS Feed' => '',
        'Custom text for the page shown to customers that have no tickets yet (if you need those text translated add them to a custom translation module).' =>
            '',
        'Customer Administration' => '',
        'Customer Information Center Search.' => '',
        'Customer Information Center.' => '',
        'Customer Ticket Print Module.' => '',
        'Customer User <-> Groups' => '',
        'Customer User <-> Services' => '',
        'Customer User Administration' => '',
        'Customer Users' => 'Клієнти',
        'Customer called us.' => '',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer preferences.' => '',
        'Customer request via web.' => '',
        'Customer ticket overview' => '',
        'Customer ticket search.' => '',
        'Customer ticket zoom' => '',
        'Customer user search' => '',
        'CustomerID search' => '',
        'CustomerName' => '',
        'CustomerUser' => '',
        'Customers <-> Groups' => 'Клієнти <-> Групи',
        'Customizable stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Czech' => '',
        'DEPRECATED: This config setting will be removed in further versions of OTRS. Sets the time (in seconds) a user is marked as active (minimum active time is 300 seconds).' =>
            '',
        'Danish' => '',
        'Data used to export the search result in CSV format.' => '',
        'Date / Time' => '',
        'Debug' => '',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            '',
        'Default' => 'Стандартна',
        'Default (Slim)' => '',
        'Default ACL values for ticket actions.' => '',
        'Default ProcessManagement entity prefixes for entity IDs that are automatically generated.' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            '',
        'Default display type for recipient (To,Cc) names in AgentTicketZoom and CustomerTicketZoom.' =>
            '',
        'Default display type for sender (From) names in AgentTicketZoom and CustomerTicketZoom.' =>
            '',
        'Default loop protection module.' => '',
        'Default queue ID used by the system in the agent interface.' => '',
        'Default skin for the agent interface (slim version).' => '',
        'Default skin for the agent interface.' => '',
        'Default skin for the customer interface.' => '',
        'Default ticket ID used by the system in the agent interface.' =>
            '',
        'Default ticket ID used by the system in the customer interface.' =>
            '',
        'Default value for NameX' => '',
        'Define Actions where a settings button is available in the linked objects widget (LinkObject::ViewMode = "complex"). Please note that these Actions must have registered the following JS and CSS files: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js.' =>
            '',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Define a mapping between variables of the customer user data (keys) and dynamic fields of a ticket (values). The purpose is to store customer user data in ticket dynamic fields. The dynamic fields must be present in the system and should be enabled for AgentTicketFreeText, so that they can be set/updated manually by the agent. They mustn\'t be enabled for AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer. If they were, they would have precedence over the automatically set values. To use this mapping, you have to also activate the next setting below.' =>
            '',
        'Define dynamic field name for end time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            '',
        'Define dynamic field name for start time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            '',
        'Define the max depth of queues.' => '',
        'Define the queue comment 2.' => '',
        'Define the service comment 2.' => '',
        'Define the sla comment 2.' => '',
        'Define the start day of the week for the date picker for the indicated calendar.' =>
            '',
        'Define the start day of the week for the date picker.' => '',
        'Define which columns are shown in the linked tickets widget (LinkObject::ViewMode = "complex"). Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Defines a customer item, which generates a LinkedIn icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a XING icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google maps icon at the end of a customer info block.' =>
            '',
        'Defines a default list of words, that are ignored by the spell checker.' =>
            '',
        'Defines a filter for html output to add links behind CVE numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind MSBulletin numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind bugtraq numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter to collect CVE numbers from article texts in AgentTicketZoom. The results will be displayed in a meta box next to the article. Fill in URLPreview if you would like to see a preview when moving your mouse cursor above the link element. This could be the same URL as in URL, but also an alternate one. Please note that some websites deny being displayed within an iframe (e.g. Google) and thus won\'t work with the preview mode.' =>
            '',
        'Defines a filter to process the text in the articles, in order to highlight predefined keywords.' =>
            '',
        'Defines a regular expression that excludes some addresses from the syntax check (if "CheckEmailAddresses" is set to "Yes"). Please enter a regex in this field for email addresses, that aren\'t syntactically valid, but are necessary for the system (i.e. "root@localhost").' =>
            '',
        'Defines a regular expression that filters all email addresses that should not be used in the application.' =>
            '',
        'Defines a sleep time in microseconds between tickets while they are been processed by a job.' =>
            '',
        'Defines a useful module to load specific user options or to display news.' =>
            '',
        'Defines all the X-headers that should be scanned.' => '',
        'Defines all the languages that are available to the application. Specify only English names of languages here.' =>
            '',
        'Defines all the languages that are available to the application. Specify only native names of languages here.' =>
            '',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for this item in the customer preferences.' =>
            '',
        'Defines all the parameters for this item in the customer preferences. \'PasswordRegExp\' allows to match passwords against a regular expression. Define the minimum number of characters using \'PasswordMinSize\'. Define if at least 2 lowercase and 2 uppercase letter characters are needed by setting the appropriate option to \'1\'. \'PasswordMin2Characters\' defines if the password needs to contain at least 2 letter characters (set to 0 or 1). \'PasswordNeedDigit\' controls the need of at least 1 digit (set to 0 or 1 to control).' =>
            '',
        'Defines all the parameters for this notification transport.' => '',
        'Defines all the possible stats output formats.' => '',
        'Defines an alternate URL, where the login link refers to.' => '',
        'Defines an alternate URL, where the logout link refers to.' => '',
        'Defines an alternate login URL for the customer panel..' => '',
        'Defines an alternate logout URL for the customer panel.' => '',
        'Defines an external link to the database of the customer (e.g. \'http://yourhost/customer.php?CID=[% Data.CustomerID %]\' or \'\').' =>
            '',
        'Defines from which ticket attributes the agent can select the result order.' =>
            '',
        'Defines how the From field from the emails (sent from answers and email tickets) should look like.' =>
            '',
        'Defines if a pre-sorting by priority should be done in the queue view.' =>
            '',
        'Defines if a pre-sorting by priority should be done in the service view.' =>
            '',
        'Defines if a ticket lock is required in the close ticket screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the email outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket bounce screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket compose screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket forward screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket free text screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket merge screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket note screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket owner screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket pending screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone inbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket priority screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket responsible screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required to change the customer of a ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if agents should be allowed to login if they have no shared secret stored in their preferences and therefore are not using two-factor authentication.' =>
            '',
        'Defines if composed messages have to be spell checked in the agent interface.' =>
            '',
        'Defines if customers should be allowed to login if they have no shared secret stored in their preferences and therefore are not using two-factor authentication.' =>
            '',
        'Defines if the enhanced mode should be used (enables use of table, replace, subscript, superscript, paste from word, etc.) in customer interface.' =>
            '',
        'Defines if the enhanced mode should be used (enables use of table, replace, subscript, superscript, paste from word, etc.).' =>
            '',
        'Defines if the previously valid token should be accepted for authentication. This is slightly less secure but gives users 30 seconds more time to enter their one-time password.' =>
            '',
        'Defines if the values for filters should be retrieved from all available tickets. If set to "Yes", only values which are actually used in any ticket will be available for filtering. Please note: The list of customers will always be retrieved like this.' =>
            '',
        'Defines if time accounting is mandatory in the agent interface. If activated, a note must be entered for all ticket actions (no matter if the note itself is configured as active or is originally mandatory for the individual ticket action screen).' =>
            '',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            '',
        'Defines out of office message template. Two string parameters (%s) available: end date and number of days left.' =>
            '',
        'Defines queues that\'s tickets are used for displaying as calendar events.' =>
            '',
        'Defines the HTTP hostname for the support data collection with the public module \'PublicSupportDataCollector\' (e.g. used from the OTRS Daemon).' =>
            '',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            '',
        'Defines the URL CSS path.' => '',
        'Defines the URL base path of icons, CSS and Java Script.' => '',
        'Defines the URL image path of icons for navigation.' => '',
        'Defines the URL java script path.' => '',
        'Defines the URL rich text editor path.' => '',
        'Defines the address of a dedicated DNS server, if necessary, for the "CheckMXRecord" look-ups.' =>
            '',
        'Defines the agent preferences key where the shared secret key is stored.' =>
            '',
        'Defines the body text for notification mails sent to agents, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to agents, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, about new account.' =>
            '',
        'Defines the body text for notification mails sent to customers, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for rejected emails.' => '',
        'Defines the calendar width in percent. Default is 95%.' => '',
        'Defines the cluster node identifier. This is only used in cluster configurations where there is more than one OTRS frontend system. Note: only values from 1 to 99 are allowed.' =>
            '',
        'Defines the column to store the keys for the preferences table.' =>
            '',
        'Defines the config options for the autocompletion feature.' => '',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view. \'PasswordRegExp\' allows to match passwords against a regular expression. Define the minimum number of characters using \'PasswordMinSize\'. Define if at least 2 lowercase and 2 uppercase letter characters are needed by setting the appropriate option to \'1\'. \'PasswordMin2Characters\' defines if the password needs to contain at least 2 letter characters (set to 0 or 1). \'PasswordNeedDigit\' controls the need of at least 1 digit (set to 0 or 1 to control). \'PasswordMaxLoginFailed\' allows to set an agent to invalid-temporarily if max failed logins reached.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            '',
        'Defines the connections for http/ftp, via a proxy.' => '',
        'Defines the customer preferences key where the shared secret key is stored.' =>
            '',
        'Defines the date input format used in forms (option or input fields).' =>
            '',
        'Defines the default CSS used in rich text editors.' => '',
        'Defines the default auto response type of the article for this operation.' =>
            '',
        'Defines the default body of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default front-end (HTML) theme to be used by the agents and customers. If you like, you can add your own theme. Please refer the administrator manual located at http://otrs.github.io/doc/.' =>
            '',
        'Defines the default front-end language. All the possible values are determined by the available language files on the system (see the next setting).' =>
            '',
        'Defines the default history type in the customer interface.' => '',
        'Defines the default maximum number of X-axis attributes for the time scale.' =>
            '',
        'Defines the default maximum number of statistics per page on the overview screen.' =>
            '',
        'Defines the default next state for a ticket after customer follow-up in the customer interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being forwarded, in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after the message has been sent, in the email outbound screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket if it is composed / answered in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default priority of follow-up customer tickets in the ticket zoom screen in the customer interface.' =>
            '',
        'Defines the default priority of new customer tickets in the customer interface.' =>
            '',
        'Defines the default priority of new tickets.' => '',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            '',
        'Defines the default selection at the drop down menu for dynamic objects (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for permissions (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for stats format (Form: Common Specification). Please insert the format key (see Stats::Format).' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for tickets in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen (AllTickets/ArchivedTickets/NotArchivedTickets).' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen. Example: "Key" must have the name of the Dynamic Field in this case \'X\', "Content" must have the value of the Dynamic Field depending on the Dynamic Field type,  Text: \'a text\', Dropdown: \'1\', Date/Time: \'Search_DynamicField_XTimeSlotStartYear=1974; Search_DynamicField_XTimeSlotStartMonth=01; Search_DynamicField_XTimeSlotStartDay=26; Search_DynamicField_XTimeSlotStartHour=00; Search_DynamicField_XTimeSlotStartMinute=00; Search_DynamicField_XTimeSlotStartSecond=00; Search_DynamicField_XTimeSlotStopYear=2013; Search_DynamicField_XTimeSlotStopMonth=01; Search_DynamicField_XTimeSlotStopDay=26; Search_DynamicField_XTimeSlotStopHour=23; Search_DynamicField_XTimeSlotStopMinute=59; Search_DynamicField_XTimeSlotStopSecond=59;\' and or \'Search_DynamicField_XTimePointFormat=week; Search_DynamicField_XTimePointStart=Before; Search_DynamicField_XTimePointValue=7\';.' =>
            '',
        'Defines the default sort criteria for all queues displayed in the queue view.' =>
            '',
        'Defines the default sort criteria for all services displayed in the service view.' =>
            '',
        'Defines the default sort order for all queues in the queue view, after priority sort.' =>
            '',
        'Defines the default sort order for all services in the service view, after priority sort.' =>
            '',
        'Defines the default spell checker dictionary.' => '',
        'Defines the default state of new customer tickets in the customer interface.' =>
            '',
        'Defines the default state of new tickets.' => '',
        'Defines the default subject for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default subject for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default subject of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default the number of seconds (from current time) to re-schedule a generic interface failed task.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in a ticket search of the customer interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the escalation view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the locked ticket view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the responsible view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the status view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the watch view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of this operation.' =>
            '',
        'Defines the default ticket bounced notification for customer/sender in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default ticket order (after priority sort) in the escalation view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order (after priority sort) in the status view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the responsible view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket locked view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the this operation. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the watch view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order of a search result in the customer interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket priority in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default ticket type for new customer tickets in the customer interface.' =>
            '',
        'Defines the default ticket type.' => '',
        'Defines the default type for article in the customer interface.' =>
            '',
        'Defines the default type of forwarded message in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default type of the article for this operation.' => '',
        'Defines the default type of the message in the email outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the agent interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the customer interface.' =>
            '',
        'Defines the default value for the action parameter for the public frontend. The action parameter is used in the scripts of the system.' =>
            '',
        'Defines the default viewable sender types of a ticket (default: customer).' =>
            '',
        'Defines the dynamic fields that are used for displaying on calendar events.' =>
            '',
        'Defines the fall-back path to open fetchmail binary. Note: The name of the binary needs to be \'fetchmail\', if it is different please use a symbolic link.' =>
            '',
        'Defines the filter that processes the text in the articles, in order to highlight URLs.' =>
            '',
        'Defines the format of responses in the ticket compose screen of the agent interface ([% Data.OrigFrom | html %] is From 1:1, [% Data.OrigFromName | html %] is only realname of From).' =>
            '',
        'Defines the fully qualified domain name of the system. This setting is used as a variable, OTRS_CONFIG_FQDN which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the groups every customer user will be in (if CustomerGroupSupport is enabled and you don\'t want to manage every user for these groups).' =>
            '',
        'Defines the height for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the height for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the history comment for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history comment for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history comment for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history type for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history type for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the hours and week days of the indicated calendar, to count the working time.' =>
            '',
        'Defines the hours and week days to count the working time.' => '',
        'Defines the key to be checked with Kernel::Modules::AgentInfo module. If this user preferences key is true, the message is accepted by the system.' =>
            '',
        'Defines the key to check with CustomerAccept. If this user preferences key is true, then the message is accepted by the system.' =>
            '',
        'Defines the link type \'Normal\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type \'ParentChild\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type groups. The link types of the same group cancel one another. Example: If ticket A is linked per a \'Normal\' link with ticket B, then these tickets could not be additionally linked with link of a \'ParentChild\' relationship.' =>
            '',
        'Defines the list of online repositories. Another installations can be used as repository, for example: Key="http://example.com/otrs/public.pl?Action=PublicRepository;File=" and Content="Some Name".' =>
            '',
        'Defines the list of possible next actions on an error screen, a full path is required, then is possible to add external links if needed.' =>
            '',
        'Defines the list of types for templates.' => '',
        'Defines the location to get online repository list for additional packages. The first available result will be used.' =>
            '',
        'Defines the log module for the system. "File" writes all messages in a given logfile, "SysLog" uses the syslog daemon of the system, e.g. syslogd.' =>
            '',
        'Defines the maximal size (in bytes) for file uploads via the browser. Warning: Setting this option to a value which is too low could cause many masks in your OTRS instance to stop working (probably any mask which takes input from the user).' =>
            '',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            '',
        'Defines the maximum number of affected tickets per job.' => '',
        'Defines the maximum number of pages per PDF file.' => '',
        'Defines the maximum number of quoted lines to be added to responses.' =>
            '',
        'Defines the maximum number of tasks to be executed as the same time.' =>
            '',
        'Defines the maximum size (in MB) of the log file.' => '',
        'Defines the maximum size in KiloByte of GenericInterface responses that get logged to the gi_debugger_entry_content table.' =>
            '',
        'Defines the module that shows a generic notification in the agent interface. Either "Text" - if configured - or the contents of "File" will be displayed.' =>
            '',
        'Defines the module that shows all the currently logged in agents in the agent interface.' =>
            '',
        'Defines the module that shows all the currently logged in customers in the agent interface.' =>
            '',
        'Defines the module that shows the currently logged in agents in the customer interface.' =>
            '',
        'Defines the module that shows the currently logged in customers in the customer interface.' =>
            '',
        'Defines the module to authenticate customers.' => '',
        'Defines the module to display a notification if cloud services are disabled.' =>
            '',
        'Defines the module to display a notification in different interfaces on different occasions for OTRS Business Solution™.' =>
            '',
        'Defines the module to display a notification in the agent interface if the OTRS Daemon is not running.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having out-of-office active.' =>
            'Визначає модуль, що показує сповіщення в інтерфейсі агента, якщо агент увійшов у систему при ввімкненому статусі «Не при справах».',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having system maintenance active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent session limit prior warning is reached.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the system is used by the admin user (normally you shouldn\'t work as admin).' =>
            '',
        'Defines the module to generate code for periodic page reloads.' =>
            '',
        'Defines the module to send emails. "Sendmail" directly uses the sendmail binary of your operating system. Any of the "SMTP" mechanisms use a specified (external) mailserver. "DoNotSendEmail" doesn\'t send emails and it is useful for test systems.' =>
            '',
        'Defines the module used to store the session data. With "DB" the frontend server can be splitted from the db server. "FS" is faster.' =>
            '',
        'Defines the name of the application, shown in the web interface, tabs and title bar of the web browser.' =>
            '',
        'Defines the name of the column to store the data in the preferences table.' =>
            '',
        'Defines the name of the column to store the user identifier in the preferences table.' =>
            '',
        'Defines the name of the indicated calendar.' => '',
        'Defines the name of the key for customer sessions.' => '',
        'Defines the name of the session key. E.g. Session, SessionID or OTRS.' =>
            '',
        'Defines the name of the table where the user preferences are stored.' =>
            '',
        'Defines the next possible states after composing / answering a ticket in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the next possible states after forwarding a ticket in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the next possible states after sending a message in the email outbound screen of the agent interface.' =>
            '',
        'Defines the next possible states for customer tickets in the customer interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being moved to another queue, in the move ticket screen of the agent interface.' =>
            '',
        'Defines the number of character per line used in case an HTML article preview replacement on TemplateGenerator for EventNotifications.' =>
            '',
        'Defines the number of days to keep the daemon log files.' => '',
        'Defines the number of header fields in frontend modules for add and update postmaster filters. It can be up to 99 fields.' =>
            '',
        'Defines the parameters for the customer preferences table.' => '',
        'Defines the parameters for the dashboard backend. "Cmd" is used to specify command with parameters. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the password to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the path and TTF-File to handle bold italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle proportional font in PDF documents.' =>
            '',
        'Defines the path of the shown info file, that is located under Kernel/Output/HTML/Templates/Standard/CustomerAccept.tt.' =>
            '',
        'Defines the path to PGP binary.' => '',
        'Defines the path to open ssl binary. It may need a HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).' =>
            '',
        'Defines the postmaster default queue.' => '',
        'Defines the priority in which the information is logged and presented.' =>
            '',
        'Defines the recipient target of the phone ticket and the sender of the email ticket ("Queue" shows all queues, "System address" displays all system addresses) in the agent interface.' =>
            '',
        'Defines the recipient target of the tickets ("Queue" shows all queues, "SystemAddress" shows only the queues which are assigned to system addresses) in the customer interface.' =>
            '',
        'Defines the required permission to show a ticket in the escalation view of the agent interface.' =>
            '',
        'Defines the search limit for the stats.' => '',
        'Defines the sender for rejected emails.' => '',
        'Defines the separator between the agents real name and the given queue email address.' =>
            '',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            '',
        'Defines the standard size of PDF pages.' => '',
        'Defines the state of a ticket if it gets a follow-up and the ticket was already closed.' =>
            '',
        'Defines the state of a ticket if it gets a follow-up.' => '',
        'Defines the state type of the reminder for pending tickets.' => '',
        'Defines the subject for notification mails sent to agents, about new password.' =>
            '',
        'Defines the subject for notification mails sent to agents, with token about new requested password.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new account.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new password.' =>
            '',
        'Defines the subject for notification mails sent to customers, with token about new requested password.' =>
            '',
        'Defines the subject for rejected emails.' => '',
        'Defines the system administrator\'s email address. It will be displayed in the error screens of the application.' =>
            '',
        'Defines the system identifier. Every ticket number and http session string contains this ID. This ensures that only tickets which belong to your system will be processed as follow-ups (useful when communicating between two instances of OTRS).' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'AsPopup PopupType_TicketAction\'.' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'target="cdb"\'.' =>
            '',
        'Defines the ticket fields that are going to be displayed calendar events. The "Key" defines the field or ticket attribute and the "Content" defines the display name.' =>
            '',
        'Defines the time zone of the indicated calendar, which can be assigned later to a specific queue.' =>
            '',
        'Defines the timeout (in seconds, minimum is 20 seconds) for the support data collection with the public module \'PublicSupportDataCollector\' (e.g. used from the OTRS Daemon).' =>
            '',
        'Defines the two-factor module to authenticate agents.' => '',
        'Defines the two-factor module to authenticate customers.' => '',
        'Defines the type of protocol, used by the web server, to serve the application. If https protocol will be used instead of plain http, it must be specified here. Since this has no affect on the web server\'s settings or behavior, it will not change the method of access to the application and, if it is wrong, it will not prevent you from logging into the application. This setting is only used as a variable, OTRS_CONFIG_HttpType which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the used character for plaintext email quotes in the ticket compose screen of the agent interface. If this is empty or inactive, original emails will not be quoted but appended to the response.' =>
            '',
        'Defines the user identifier for the customer panel.' => '',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the valid state types for a ticket.' => '',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.Console.pl Maint::Ticket::UnlockTimeout" can be used.' =>
            '',
        'Defines the viewable locks of a ticket. NOTE: When you change this setting, make sure to delete the cache in order to use the new value. Default: unlock, tmp_lock.' =>
            '',
        'Defines the width for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines which article sender types should be shown in the preview of a ticket.' =>
            '',
        'Defines which items are available for \'Action\' in third level of the ACL structure.' =>
            '',
        'Defines which items are available in first level of the ACL structure.' =>
            '',
        'Defines which items are available in second level of the ACL structure.' =>
            '',
        'Defines which states should be set automatically (Content), after the pending time of state (Key) has been reached.' =>
            '',
        'Defines wich article type should be expanded when entering the overview. If nothing defined, latest article will be expanded.' =>
            '',
        'Defines, which tickets of which ticket state types should not be listed in linked ticket lists.' =>
            '',
        'Delete expired cache from core modules.' => '',
        'Delete expired loader cache weekly (Sunday mornings).' => '',
        'Delete expired sessions.' => '',
        'Deleted link to ticket "%s".' => '',
        'Deletes a session if the session id is used with an invalid remote IP address.' =>
            '',
        'Deletes requested sessions if they have timed out.' => '',
        'Delivers extended debugging information in the frontend in case any AJAX errors occur, if enabled.' =>
            '',
        'Deploy and manage OTRS Business Solution™.' => '',
        'Determines if the list of possible queues to move to ticket into should be displayed in a dropdown list or in a new window in the agent interface. If "New Window" is set you can add a move note to the ticket.' =>
            '',
        'Determines if the statistics module may generate ticket lists.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new email ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new phone ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, for process tickets in the agent interface.' =>
            '',
        'Determines the next possible ticket states, for process tickets in the customer interface.' =>
            '',
        'Determines the next screen after new customer ticket in the customer interface.' =>
            '',
        'Determines the next screen after the follow-up screen of a zoomed ticket in the customer interface.' =>
            '',
        'Determines the next screen after the ticket is moved. LastScreenOverview will return the last overview screen (e.g. search results, queueview, dashboard). TicketZoom will return to the TicketZoom.' =>
            '',
        'Determines the possible states for pending tickets that changed state after reaching time limit.' =>
            '',
        'Determines the strings that will be shown as recipient (To:) of the phone ticket and as sender (From:) of the email ticket in the agent interface. For Queue as NewQueueSelectionType "<Queue>" shows the names of the queues and for SystemAddress "<Realname> <<Email>>" shows the name and email of the recipient.' =>
            '',
        'Determines the strings that will be shown as recipient (To:) of the ticket in the customer interface. For Queue as CustomerPanelSelectionType, "<Queue>" shows the names of the queues, and for SystemAddress, "<Realname> <<Email>>" shows the name and email of the recipient.' =>
            '',
        'Determines the way the linked objects are displayed in each zoom mask.' =>
            '',
        'Determines which options will be valid of the recipient (phone ticket) and the sender (email ticket) in the agent interface.' =>
            '',
        'Determines which queues will be valid for ticket\'s recepients in the customer interface.' =>
            '',
        'Development' => '',
        'Disable HTTP header "Content-Security-Policy" to allow loading of external script contents. Disabling this HTTP header can be a security issue! Only disable it, if you know what you are doing!' =>
            '',
        'Disable HTTP header "X-Frame-Options: SAMEORIGIN" to allow OTRS to be included as an IFrame in other websites. Disabling this HTTP header can be a security issue! Only disable it, if you know what you are doing!' =>
            '',
        'Disable restricted security for IFrames in IE. May be required for SSO to work in IE.' =>
            '',
        'Disables sending reminder notifications to the responsible agent of a ticket (Ticket::Responsible needs to be activated).' =>
            '',
        'Disables the communication between this system and OTRS Group servers that provides cloud services. If active, some functionality will be lost such as system registration, support data sending, upgrading to and use of OTRS Business Solution™, OTRS Verify™, OTRS News and product News dashboard widgets, among others.' =>
            '',
        'Disables the web installer (http://yourhost.example.com/otrs/installer.pl), to prevent the system from being hijacked. If set to "No", the system can be reinstalled and the current basic configuration will be used to pre-populate the questions within the installer script. If not active, it also disables the GenericAgent, PackageManager and SQL Box.' =>
            '',
        'Display a warning and prevent search when using stop words within fulltext search.' =>
            '',
        'Display settings to override defaults for Process Tickets.' => '',
        'Displays the accounted time for an article in the ticket zoom view.' =>
            '',
        'Dropdown' => '',
        'Dutch stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Dynamic Fields Checkbox Backend GUI' => '',
        'Dynamic Fields Date Time Backend GUI' => '',
        'Dynamic Fields Drop-down Backend GUI' => '',
        'Dynamic Fields GUI' => '',
        'Dynamic Fields Multiselect Backend GUI' => '',
        'Dynamic Fields Overview Limit' => '',
        'Dynamic Fields Text Backend GUI' => '',
        'Dynamic Fields used to export the search result in CSV format.' =>
            '',
        'Dynamic fields groups for process widget. The key is the name of the group, the value contains the fields to be shown. Example: \'Key => My Group\', \'Content: Name_X, NameY\'.' =>
            '',
        'Dynamic fields limit per page for Dynamic Fields Overview' => '',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###DynamicField.' =>
            '',
        'Dynamic fields options shown in the ticket reply section in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the email outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the process widget in ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the sidebar of the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket close screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket email screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket forward screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket medium format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket move screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket overview screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket owner screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket pending screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone inbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket preview format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket priority screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket search overview results screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and shown by default.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket small format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'DynamicField' => '',
        'DynamicField backend registration.' => '',
        'DynamicField object registration.' => '',
        'E-Mail Outbound' => '',
        'Edit Customer Companies.' => '',
        'Edit Customer Users.' => '',
        'Edit customer company' => '',
        'Email Addresses' => 'Адреси email',
        'Email Outbound' => '',
        'Email sent to "%s".' => '',
        'Email sent to customer.' => '',
        'Enable keep-alive connection header for SOAP responses.' => '',
        'Enabled filters.' => '',
        'Enables PGP support. When PGP support is enabled for signing and encrypting mail, it is HIGHLY recommended that the web server runs as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            '',
        'Enables S/MIME support.' => '',
        'Enables customers to create their own accounts.' => '',
        'Enables fetch S/MIME from CustomerUser backend support.' => '',
        'Enables file upload in the package manager frontend.' => '',
        'Enables or disables the caching for templates. WARNING: Do NOT disable template caching for production environments for it will cause a massive performance drop! This setting should only be disabled for debugging reasons!' =>
            '',
        'Enables or disables the debug mode over frontend interface.' => '',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            '',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            '',
        'Enables spell checker support.' => '',
        'Enables the minimal ticket counter size (if "Date" was selected as TicketNumberGenerator).' =>
            '',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            '',
        'Enables ticket bulk action feature only for the listed groups.' =>
            '',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            '',
        'Enables ticket watcher feature only for the listed groups.' => '',
        'English (Canada)' => '',
        'English (United Kingdom)' => '',
        'English (United States)' => '',
        'English stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Enroll process for this ticket' => '',
        'Enter your shared secret to enable two factor authentication.' =>
            '',
        'Escalation response time finished' => '',
        'Escalation response time forewarned' => '',
        'Escalation response time in effect' => '',
        'Escalation solution time finished' => '',
        'Escalation solution time forewarned' => '',
        'Escalation solution time in effect' => '',
        'Escalation update time finished' => '',
        'Escalation update time forewarned' => '',
        'Escalation update time in effect' => '',
        'Escalation view' => 'Ескальовані заявки',
        'EscalationTime' => '',
        'Estonian' => '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate).' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            '',
        'Event module that performs an update statement on TicketIndex to rename the queue name there if needed and if StaticDB is actually used.' =>
            '',
        'Event module that updates customer user search profiles if login changes.' =>
            '',
        'Event module that updates customer user service membership if login changes.' =>
            '',
        'Event module that updates customer users after an update of the Customer.' =>
            '',
        'Event module that updates tickets after an update of the Customer User.' =>
            '',
        'Event module that updates tickets after an update of the Customer.' =>
            '',
        'Events Ticket Calendar' => '',
        'Execute SQL statements.' => '',
        'Executes a custom command or module. Note: if module is used, function is required.' =>
            '',
        'Executes follow-up checks on In-Reply-To or References headers for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on attachment contents for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on email body for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on the raw source email for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Exports the whole article tree in search result (it can affect the system performance).' =>
            '',
        'Fetch emails via fetchmail (using SSL).' => '',
        'Fetch emails via fetchmail.' => '',
        'Fetch incoming emails from configured mail accounts.' => '',
        'Fetches packages via proxy. Overwrites "WebUserAgent::Proxy".' =>
            '',
        'File that is displayed in the Kernel::Modules::AgentInfo module, if located under Kernel/Output/HTML/Templates/Standard/AgentInfo.tt.' =>
            '',
        'Filter for debugging ACLs. Note: More ticket attributes can be added in the format <OTRS_TICKET_Attribute> e.g. <OTRS_TICKET_Priority>.' =>
            '',
        'Filter for debugging Transitions. Note: More filters can be added in the format <OTRS_TICKET_Attribute> e.g. <OTRS_TICKET_Priority>.' =>
            '',
        'Filter incoming emails.' => '',
        'Finnish' => '',
        'First Queue' => '',
        'FirstLock' => '',
        'FirstResponse' => '',
        'FirstResponseDiffInMin' => '',
        'FirstResponseInMin' => '',
        'Firstname Lastname' => '',
        'Firstname Lastname (UserLogin)' => '',
        'FollowUp for [%s]. %s' => '',
        'Forces encoding of outgoing emails (7bit|8bit|quoted-printable|base64).' =>
            '',
        'Forces to choose a different ticket state (from current) after lock action. Define the current state as key, and the next state after lock action as content.' =>
            '',
        'Forces to unlock tickets after being moved to another queue.' =>
            '',
        'Forwarded to "%s".' => 'Переспрямоване «%s».',
        'French' => '',
        'French (Canada)' => '',
        'French stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Frontend' => '',
        'Frontend module registration (disable AgentTicketService link if Ticket Service feature is not used).' =>
            '',
        'Frontend module registration (disable company link if no company feature is used).' =>
            '',
        'Frontend module registration (disable ticket processes screen if no process available) for Customer.' =>
            '',
        'Frontend module registration (disable ticket processes screen if no process available).' =>
            '',
        'Frontend module registration for the agent interface.' => '',
        'Frontend module registration for the customer interface.' => '',
        'Frontend theme' => '',
        'Frontend theme.' => '',
        'Full value' => '',
        'Fulltext index regex filters to remove parts of the text.' => '',
        'Fulltext search' => '',
        'Galician' => '',
        'General ticket data shown in the ticket overviews (fall-back). Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note that TicketNumber can not be disabled, because it is necessary.' =>
            '',
        'Generate dashboard statistics.' => '',
        'Generic Info module.' => '',
        'GenericAgent' => '',
        'GenericInterface Debugger GUI' => '',
        'GenericInterface Invoker GUI' => '',
        'GenericInterface Operation GUI' => '',
        'GenericInterface TransportHTTPREST GUI' => '',
        'GenericInterface TransportHTTPSOAP GUI' => '',
        'GenericInterface Web Service GUI' => '',
        'GenericInterface Webservice History GUI' => '',
        'GenericInterface Webservice Mapping GUI' => '',
        'GenericInterface module registration for the invoker layer.' => '',
        'GenericInterface module registration for the mapping layer.' => '',
        'GenericInterface module registration for the operation layer.' =>
            '',
        'GenericInterface module registration for the transport layer.' =>
            '',
        'German' => '',
        'German stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Gives end users the possibility to override the separator character for CSV files, defined in the translation files.' =>
            '',
        'Global Search Module.' => '',
        'Go back' => '',
        'Google Authenticator' => '',
        'Graph: Bar Chart' => '',
        'Graph: Line Chart' => '',
        'Graph: Stacked Area Chart' => '',
        'Greek' => '',
        'HTML Reference' => '',
        'HTML Reference.' => '',
        'Hebrew' => '',
        'Helps to extend your articles full-text search (From, To, Cc, Subject and Body search). Runtime will do full-text searches on live data (it works fine for up to 50.000 tickets). StaticDB will strip all articles and will build an index after article creation, increasing fulltext searches about 50%. To create an initial index use "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild".' =>
            '',
        'Hindi' => '',
        'Hungarian' => '',
        'If "DB" was selected for Customer::AuthModule, a database driver (normally autodetection is used) can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a password to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a username to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the DSN for the connection to the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the column name for the CustomerPassword in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the crypt type of passwords must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the column for the CustomerKey in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the table where your customer data should be stored must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a table in database where session data will be stored must be specified.' =>
            '',
        'If "FS" was selected for SessionModule, a directory where the session data will be stored must be specified.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify (by using a RegExp) to strip parts of REMOTE_USER (e. g. for to remove trailing domains). RegExp-Note, $1 will be the new Login.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify to strip leading parts of user names (e. g. for domains like example_domain\user to user).' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and if you want to add a suffix to every customer login name, specifiy it here, e. g. you just want to write the username user but in your LDAP directory exists user@domain.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and special paramaters are needed for the Net::LDAP perl module, you can specify them here. See "perldoc Net::LDAP" for more information about the parameters.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the password for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the username for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the BaseDN must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the LDAP host can be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the user identifier must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, user attributes can be specified. For LDAP posixGroups use UID, for non LDAP posixGroups use full user DN.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify access attributes here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "LDAP" was selected for Customer::Authmodule, you can check if the user is allowed to authenticate because he is in a posixGroup, e.g. user needs to be in a group xyz to use OTRS. Specify the group, who may access the system.' =>
            '',
        'If "LDAP" was selected, you can add a filter to each LDAP query, e.g. (mail=*), (objectclass=user) or (!objectclass=computer).' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the password to authenticate to the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "Sendmail" was selected as SendmailModule, the location of the sendmail binary and the needed options must be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log facility can be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log sock can be specified (on solaris you may need to use \'stream\').' =>
            '',
        'If "SysLog" was selected for LogModule, the charset that should be used for logging can be specified.' =>
            '',
        'If "file" was selected for LogModule, a logfile must be specified. If the file doesn\'t exist, it will be created by the system.' =>
            '',
        'If active, none of the regular expressions may match the user\'s email address to allow registration.' =>
            '',
        'If active, one of the regular expressions has to match the user\'s email address to allow registration.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, a password must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, an username must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the mailhost that sends out the mails must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the port where your mailserver is listening for incoming connections must be specified.' =>
            '',
        'If enabled debugging information for ACLs is logged.' => '',
        'If enabled debugging information for transitions is logged.' => '',
        'If enabled the daemon will redirect the standard error stream to a log file.' =>
            '',
        'If enabled the daemon will redirect the standard output stream to a log file.' =>
            '',
        'If enabled, OTRS will deliver all CSS files in minified form. WARNING: If you turn this off, there will likely be problems in IE 7, because it cannot load more than 32 CSS files.' =>
            '',
        'If enabled, OTRS will deliver all JavaScript files in minified form.' =>
            '',
        'If enabled, TicketPhone and TicketEmail will be open in new windows.' =>
            '',
        'If enabled, the OTRS version tag will be removed from the Webinterface, the HTTP headers and the X-Headers of outgoing mails. NOTE: If you change this option, please make sure to delete the cache.' =>
            '',
        'If enabled, the customer can search for tickets in all services (regardless what services are assigned to the customer).' =>
            '',
        'If enabled, the different overviews (Dashboard, LockedView, QueueView) will automatically refresh after the specified time.' =>
            '',
        'If enabled, the first level of the main menu opens on mouse hover (instead of click only).' =>
            '',
        'If no SendmailNotificationEnvelopeFrom is specified, this setting makes it possible to use the email\'s from address instead of an empty envelope sender (required in certain mail server configurations).' =>
            '',
        'If set, this address is used as envelope sender header in outgoing notifications. If no address is specified, the envelope sender header is empty (unless SendmailNotificationEnvelopeFrom::FallbackToEmailFrom is set).' =>
            '',
        'If set, this address is used as envelope sender in outgoing messages (not notifications - see below). If no address is specified, the envelope sender is equal to queue e-mail address.' =>
            '',
        'If this option is disabled, articles will not automatically be decrypted and stored in the database. Please note that this also means no decryption will take place and the articles will be shown in ticket zoom in their original (encrypted) form.' =>
            '',
        'If this option is set to \'Yes\', tickets created via the web interface, via Customers or Agents, will receive an autoresponse if configured. If this option is set to \'No\', no autoresponses will be sent.' =>
            '',
        'If this regex matches, no message will be send by the autoresponder.' =>
            '',
        'If this setting is active, local modifications will not be highlighted as errors in the package manager and support data collector.' =>
            '',
        'If you\'re going to be out of office, you may wish to let other users know by setting the exact dates of your absence.' =>
            '',
        'Ignore system sender article types (e. g. auto responses or email notifications) to be flagged as \'Unread Article\' in AgentTicketZoom or expanded automatically in Large view screens.' =>
            '',
        'Include tickets of subqueues per default when selecting a queue.' =>
            '',
        'Include unknown customers in ticket filter.' => '',
        'Includes article create times in the ticket search of the agent interface.' =>
            '',
        'Incoming Phone Call.' => '',
        'IndexAccelerator: to choose your backend TicketViewAccelerator module. "RuntimeDB" generates each queue view on the fly from ticket table (no performance problems up to approx. 60.000 tickets in total and 6.000 open tickets in the system). "StaticDB" is the most powerful module, it uses an extra ticket-index table that works like a view (recommended if more than 80.000 and 6.000 open tickets are stored in the system). Use the command "bin/otrs.Console.pl Maint::Ticket::QueueIndexRebuild" for initial index creation.' =>
            '',
        'Indonesian' => '',
        'Input' => '',
        'Install ispell or aspell on the system, if you want to use a spell checker. Please specify the path to the aspell or ispell binary on your operating system.' =>
            '',
        'Interface language' => 'Мова інтерфейсу',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Italian' => '',
        'Italian stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Ivory' => '',
        'Ivory (Slim)' => '',
        'Japanese' => '',
        'JavaScript function for the search frontend.' => '',
        'Last customer subject' => '',
        'Lastname Firstname' => '',
        'Lastname Firstname (UserLogin)' => '',
        'Lastname, Firstname' => '',
        'Lastname, Firstname (UserLogin)' => '',
        'Latvian' => '',
        'Left' => '',
        'Link Object' => 'Зв\'язати об\'єкт',
        'Link Object.' => '',
        'Link agents to groups.' => 'Зв\'язати агентів із групами.',
        'Link agents to roles.' => 'Зв\'язати агентів з ролями.',
        'Link attachments to templates.' => '',
        'Link customer user to groups.' => '',
        'Link customer user to services.' => '',
        'Link queues to auto responses.' => '',
        'Link roles to groups.' => '',
        'Link templates to queues.' => '',
        'Links 2 tickets with a "Normal" type link.' => '',
        'Links 2 tickets with a "ParentChild" type link.' => '',
        'List of CSS files to always be loaded for the agent interface.' =>
            '',
        'List of CSS files to always be loaded for the customer interface.' =>
            '',
        'List of JS files to always be loaded for the agent interface.' =>
            '',
        'List of JS files to always be loaded for the customer interface.' =>
            '',
        'List of all CustomerCompany events to be displayed in the GUI.' =>
            '',
        'List of all CustomerUser events to be displayed in the GUI.' => '',
        'List of all DynamicField events to be displayed in the GUI.' => '',
        'List of all Package events to be displayed in the GUI.' => '',
        'List of all article events to be displayed in the GUI.' => '',
        'List of all queue events to be displayed in the GUI.' => '',
        'List of all ticket events to be displayed in the GUI.' => '',
        'List of default Standard Templates which are assigned automatically to new Queues upon creation.' =>
            '',
        'List of responsive CSS files to always be loaded for the agent interface.' =>
            '',
        'List of responsive CSS files to always be loaded for the customer interface.' =>
            '',
        'List view' => '',
        'Lithuanian' => '',
        'Lock / unlock this ticket' => '',
        'Locked Tickets.' => '',
        'Locked ticket.' => 'Заблокована заявка.',
        'Log file for the ticket counter.' => '',
        'Logged-In Users' => '',
        'Logout of customer panel.' => '',
        'Loop-Protection! No auto-response sent to "%s".' => '',
        'Mail Accounts' => '',
        'Main menu registration.' => '',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            '',
        'Makes the application check the syntax of email addresses.' => '',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            '',
        'Malay' => '',
        'Manage OTRS Group cloud services.' => '',
        'Manage PGP keys for email encryption.' => 'Керування PGP ключами для шифрування поштових повідомлень.',
        'Manage POP3 or IMAP accounts to fetch email from.' => 'Керування POP3 або IMAP обліковими записами для одержання поштових повідомлень.',
        'Manage S/MIME certificates for email encryption.' => '',
        'Manage existing sessions.' => 'Керування активними сеансами.',
        'Manage support data.' => '',
        'Manage system registration.' => '',
        'Manage tasks triggered by event or time based execution.' => '',
        'Mark this ticket as junk!' => '',
        'Max size (in characters) of the customer information table (phone and email) in the compose screen.' =>
            '',
        'Max size (in rows) of the informed agents box in the agent interface.' =>
            '',
        'Max size (in rows) of the involved agents box in the agent interface.' =>
            '',
        'Max size of the subjects in an email reply and in some overview screens.' =>
            '',
        'Maximal auto email responses to own email-address a day (Loop-Protection).' =>
            '',
        'Maximal size in KBytes for mails that can be fetched via POP3/POP3S/IMAP/IMAPS (KBytes).' =>
            '',
        'Maximum Number of a calendar shown in a dropdown.' => '',
        'Maximum length (in characters) of the dynamic field in the article of the ticket zoom view.' =>
            '',
        'Maximum length (in characters) of the dynamic field in the sidebar of the ticket zoom view.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the agent interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the customer interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of this operation.' =>
            '',
        'Maximum size (in characters) of the customer information table in the ticket zoom view.' =>
            '',
        'Merge this ticket and all articles into another ticket' => '',
        'Merged Ticket <OTRS_TICKET> to <OTRS_MERGE_TO_TICKET>.' => '',
        'Miscellaneous' => '',
        'Module for To-selection in new ticket screen in the customer interface.' =>
            '',
        'Module to check if arrived emails should be marked as email-internal (because of original forwarded internal email). ArticleType and SenderType define the values for the arrived email/article.' =>
            '',
        'Module to check the group permissions for customer access to tickets.' =>
            '',
        'Module to check the group permissions for the access to tickets.' =>
            '',
        'Module to compose signed messages (PGP or S/MIME).' => '',
        'Module to crypt composed messages (PGP or S/MIME).' => '',
        'Module to fetch customer users SMIME certificates of incoming messages.' =>
            '',
        'Module to filter and manipulate incoming messages. Block/ignore all spam email with From: noreply@ address.' =>
            '',
        'Module to filter and manipulate incoming messages. Get a 4 digit number to ticket free text, use regex in Match e. g. From => \'(.+?)@.+?\', and use () as [***] in Set =>.' =>
            '',
        'Module to filter encrypted bodies of incoming messages.' => '',
        'Module to generate accounted time ticket statistics.' => '',
        'Module to generate html OpenSearch profile for short ticket search in the agent interface.' =>
            '',
        'Module to generate html OpenSearch profile for short ticket search in the customer interface.' =>
            '',
        'Module to generate ticket solution and response time statistics.' =>
            'Модуль для генерування статистики за часом відгуку та рішення заявки.',
        'Module to generate ticket statistics.' => 'Модуль для формування статистки за заявками.',
        'Module to grant access if the CustomerID of the ticket matches the CustomerID of the customer.' =>
            '',
        'Module to grant access if the CustomerUserID of the ticket matches the CustomerUserID of the customer.' =>
            '',
        'Module to grant access to any agent that has been involved in a ticket in the past (based on ticket history entries).' =>
            '',
        'Module to grant access to the agent responsible of a ticket.' =>
            '',
        'Module to grant access to the creator of a ticket.' => '',
        'Module to grant access to the owner of a ticket.' => '',
        'Module to grant access to the watcher agents of a ticket.' => '',
        'Module to show notifications and escalations (ShownMax: max. shown escalations, EscalationInMinutes: Show ticket which will escalation in, CacheTime: Cache of calculated escalations in seconds).' =>
            '',
        'Module to use database filter storage.' => '',
        'Multiselect' => '',
        'My Services' => 'Мої Сервіси',
        'My Tickets.' => '',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'Name of custom service. The custom service is a service selection of your preferred services and can be selected in the preferences settings.' =>
            '',
        'NameX' => '',
        'Nederlands' => '',
        'New Ticket [%s] created (Q=%s;P=%s;S=%s).' => '',
        'New Window' => '',
        'New owner is "%s" (ID=%s).' => '',
        'New process ticket' => '',
        'New responsible is "%s" (ID=%s).' => '',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'None' => '',
        'Norwegian' => '',
        'Notification sent to "%s".' => '',
        'Number of displayed tickets' => 'Кількість відображуваних заявок',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'OTRS can use one or more readonly mirror databases for expensive operations like fulltext search or statistics generation. Here you can specify the DSN for the first mirror database.' =>
            '',
        'Old: "%s" New: "%s"' => '',
        'Open tickets (customer user)' => '',
        'Open tickets (customer)' => '',
        'Option' => '',
        'Optional queue limitation for the CreatorCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the InvolvedCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the OwnerCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the ResponsibleCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Out Of Office' => 'Не при справах',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets.' => '',
        'Overview Refresh Time' => 'Час оновлення швидкого огляду',
        'Overview of all escalated tickets.' => '',
        'Overview of all open Tickets.' => 'Перегляд усіх відкритих заявок.',
        'Overview of all open tickets.' => '',
        'Overview of customer tickets.' => '',
        'PGP Key Management' => '',
        'Package event module file a scheduler task for update registration.' =>
            '',
        'Parameters for the CreateNextMask object in the preference view of the agent interface.' =>
            '',
        'Parameters for the CustomQueue object in the preference view of the agent interface.' =>
            '',
        'Parameters for the CustomService object in the preference view of the agent interface.' =>
            '',
        'Parameters for the RefreshTime object in the preference view of the agent interface.' =>
            '',
        'Parameters for the column filters of the small ticket overview.' =>
            '',
        'Parameters for the dashboard backend of the customer company information of the agent interface. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer id status widget of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer user list overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the new tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the open tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the queue overview widget of the agent interface. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "QueuePermissionGroup" is not mandatory, queues are only listed if they belong to this permission group if you enable it. "States" is a list of states, the key is the sort order of the state in the widget. "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the running process tickets overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket escalation overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the ticket events calendar of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the ticket stats of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the upcoming events widget of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the pages (in which the dynamic fields are shown) of the dynamic fields overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the medium ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the small ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the ticket preview overview.' =>
            '',
        'Parameters of the example SLA attribute Comment2.' => '',
        'Parameters of the example queue attribute Comment2.' => '',
        'Parameters of the example service attribute Comment2.' => '',
        'ParentChild' => '',
        'Path for the log file (it only applies if "FS" was selected for LoopProtectionModule and it is mandatory).' =>
            '',
        'People' => '',
        'Performs the configured action for each event (as an Invoker) for each configured Webservice.' =>
            '',
        'Permitted width for compose email windows.' => '',
        'Permitted width for compose note windows.' => '',
        'Persian' => '',
        'Phone Call.' => '',
        'Picture Upload' => '',
        'Picture upload module.' => '',
        'Picture-Upload' => '',
        'Polish' => '',
        'Portuguese' => '',
        'Portuguese (Brasil)' => '',
        'PostMaster Filters' => '',
        'PostMaster Mail Accounts' => '',
        'Process Management Activity Dialog GUI' => '',
        'Process Management Activity GUI' => '',
        'Process Management Path GUI' => '',
        'Process Management Transition Action GUI' => '',
        'Process Management Transition GUI' => '',
        'Process Ticket.' => '',
        'Process pending tickets.' => '',
        'Process ticket' => '',
        'ProcessID' => '',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            '',
        'Provides a matrix overview of the tickets per state per queue.' =>
            '',
        'Queue view' => 'Перегляд черги',
        'Rebuild the ticket index for AgentTicketQueue.' => '',
        'Recognize if a ticket is a follow-up to an existing ticket using an external ticket number.' =>
            '',
        'Refresh interval' => 'Оновляти кожні',
        'Removed subscription for user "%s".' => 'Вилучена підписка для користувача «%s».',
        'Removes the ticket watcher information when a ticket is archived.' =>
            '',
        'Renew existing SMIME certificates from customer backend. Note: SMIME and SMIME::FetchFromCustomer needs to be active in SysConfig and customer backend needs to be configured to fetch UserSMIMECertificate attribute.' =>
            '',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            '',
        'Reports' => '',
        'Reports (OTRS Business Solution™)' => '',
        'Reprocess mails from spool directory that could not be imported in the first place.' =>
            '',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            '',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            '',
        'Required permissions to use the email outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            '',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            '',
        'Responsible Tickets' => '',
        'Responsible Tickets.' => '',
        'Restores a ticket from the archive (only if the event is a state change to any open available state).' =>
            '',
        'Retains all services in listings even if they are children of invalid elements.' =>
            '',
        'Right' => '',
        'Roles <-> Groups' => 'Ролі <-> Групи',
        'Run file based generic agent jobs (Note: module name needs to be specified in -configuration-module param e.g. "Kernel::System::GenericAgent").' =>
            '',
        'Running Process Tickets' => '',
        'Runs an initial wildcard search of the existing customer company when accessing the AdminCustomerCompany module.' =>
            '',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'Russian' => '',
        'SMS' => '',
        'SMS (Short Message Service)' => '',
        'Sample command output' => '',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data. Note: Searching for attachment names is not supported when "FS" is used.' =>
            '',
        'Schedule a maintenance period.' => '',
        'Screen' => '',
        'Search Customer' => 'Шукати клієнта',
        'Search Ticket.' => '',
        'Search Tickets.' => '',
        'Search User' => '',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Search.' => '',
        'Second Queue' => '',
        'Select after which period ticket overviews should refresh automatically.' =>
            '',
        'Select how many tickets should be shown in overviews by default.' =>
            '',
        'Select the main interface language.' => '',
        'Select your default spelling dictionary.' => '',
        'Select your preferred layout for OTRS.' => '',
        'Select your preferred theme for OTRS.' => '',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send new outgoing mail from this ticket' => '',
        'Send notifications to users.' => 'Відправити повідомлення користувачам.',
        'Sender type for new tickets from the customer inteface.' => '',
        'Sends agent follow-up notification only to the owner, if a ticket is unlocked (the default is to send the notification to all agents).' =>
            '',
        'Sends all outgoing email via bcc to the specified address. Please use this only for backup reasons.' =>
            '',
        'Sends customer notifications just to the mapped customer.' => '',
        'Sends registration information to OTRS group.' => '',
        'Sends reminder notifications of unlocked ticket after reaching the reminder date (only sent to ticket owner).' =>
            '',
        'Sends the notifications which are configured in the admin interface under "Notfication (Event)".' =>
            '',
        'Serbian Cyrillic' => '',
        'Serbian Latin' => '',
        'Service view' => '',
        'ServiceView' => '',
        'Set a new password by filling in your current password and a new one.' =>
            '',
        'Set sender email addresses for this system.' => 'Задати адреса відправника для цієї системи.',
        'Set the default height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set the limit of tickets that will be executed on a single genericagent job execution.' =>
            '',
        'Set the maximum height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set the minimum log level. If you select \'error\', just errors are logged. With \'debug\' you get all logging messages. The order of log levels is: \'debug\', \'info\', \'notice\' and \'error\'.' =>
            '',
        'Set this to yes if you trust in all your public and private pgp keys, even if they are not certified with a trusted signature.' =>
            '',
        'Sets if SLA must be selected by the agent.' => '',
        'Sets if SLA must be selected by the customer.' => '',
        'Sets if note must be filled in by the agent. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Sets if service must be selected by the agent.' => '',
        'Sets if service must be selected by the customer.' => '',
        'Sets if ticket owner must be selected by the agent.' => '',
        'Sets the PendingTime of a ticket to 0 if the state is changed to a non-pending state.' =>
            '',
        'Sets the age in minutes (first level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the age in minutes (second level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the configuration level of the administrator. Depending on the config level, some sysconfig options will be not shown. The config levels are in in ascending order: Expert, Advanced, Beginner. The higher the config level is (e.g. Beginner is the highest), the less likely is it that the user can accidentally configure the system in a way that it is not usable any more.' =>
            '',
        'Sets the count of articles visible in preview mode of ticket overviews.' =>
            '',
        'Sets the default article type for new email tickets in the agent interface.' =>
            '',
        'Sets the default article type for new phone tickets in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default error message for the login screen on Agent and Customer interface, it\'s shown when a running system maintenance period is active.' =>
            '',
        'Sets the default link type of splitted tickets in the agent interface.' =>
            '',
        'Sets the default message for the login screen on Agent and Customer interface, it\'s shown when a running system maintenance period is active.' =>
            '',
        'Sets the default message for the notification is shown on a running system maintenance period.' =>
            '',
        'Sets the default next state for new phone tickets in the agent interface.' =>
            '',
        'Sets the default next ticket state, after the creation of an email ticket in the agent interface.' =>
            '',
        'Sets the default note text for new telephone tickets. E.g \'New ticket via call\' in the agent interface.' =>
            '',
        'Sets the default priority for new email tickets in the agent interface.' =>
            '',
        'Sets the default priority for new phone tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new email tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new phone ticket in the agent interface.' =>
            '',
        'Sets the default subject for new email tickets (e.g. \'email Outbound\') in the agent interface.' =>
            '',
        'Sets the default subject for new phone tickets (e.g. \'Phone call\') in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default text for new email tickets in the agent interface.' =>
            '',
        'Sets the display order of the different items in the preferences view.' =>
            '',
        'Sets the inactivity time (in seconds) to pass before a session is killed and a user is logged out.' =>
            '',
        'Sets the maximum number of active agents within the timespan defined in SessionMaxIdleTime before a prior warning will be visible for the logged in agents.' =>
            '',
        'Sets the maximum number of active agents within the timespan defined in SessionMaxIdleTime.' =>
            '',
        'Sets the maximum number of active customers within the timespan defined in SessionMaxIdleTime.' =>
            '',
        'Sets the maximum number of active sessions per agent within the timespan defined in SessionMaxIdleTime.' =>
            '',
        'Sets the maximum number of active sessions per customers within the timespan defined in SessionMaxIdleTime.' =>
            '',
        'Sets the minimal ticket counter size if "AutoIncrement" was selected as TicketNumberGenerator. Default is 5, this means the counter starts from 10000.' =>
            '',
        'Sets the minutes a notification is shown for notice about upcoming system maintenance period.' =>
            '',
        'Sets the number of lines that are displayed in text messages (e.g. ticket lines in the QueueZoom).' =>
            '',
        'Sets the options for PGP binary.' => '',
        'Sets the order of the different items in the customer preferences view.' =>
            '',
        'Sets the password for private PGP key.' => '',
        'Sets the prefered time units (e.g. work units, hours, minutes).' =>
            '',
        'Sets the prefix to the scripts folder on the server, as configured on the web server. This setting is used as a variable, OTRS_CONFIG_ScriptAlias which is found in all forms of messaging used by the application, to build links to the tickets within the system.' =>
            '',
        'Sets the queue in the ticket close screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket free text screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket note screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket responsible screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the close ticket screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket note screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the service in the close ticket screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket free text screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket note screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket responsible screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the state of a ticket in the close ticket screen of the agent interface.' =>
            '',
        'Sets the state of a ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the state of a ticket in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the state of a ticket in the ticket note screen of the agent interface.' =>
            '',
        'Sets the state of a ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the state of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the state of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the state of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the stats hook.' => '',
        'Sets the system time zone (required a system with UTC as system time). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the ticket owner in the close ticket screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket note screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the ticket type in the close ticket screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket type in the ticket free text screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket note screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket responsible screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the timeout (in seconds) for http/ftp downloads.' => '',
        'Sets the timeout (in seconds) for package downloads. Overwrites "WebUserAgent::Timeout".' =>
            '',
        'Sets the user time zone per user (required a system with UTC as system time and UTC under TimeZone). Otherwise this is a diff time to the local time.' =>
            '',
        'Sets the user time zone per user based on java script / browser time zone offset feature at login time.' =>
            '',
        'Shared Secret' => '',
        'Should the cache data be held in memory?' => '',
        'Should the cache data be stored in the selected cache backend?' =>
            '',
        'Show a responsible selection in phone and email tickets in the agent interface.' =>
            '',
        'Show article as rich text even if rich text writing is disabled.' =>
            '',
        'Show queues even when only locked tickets are in.' => '',
        'Show the current owner in the customer interface.' => '',
        'Show the current queue in the customer interface.' => '',
        'Show the history for this ticket' => '',
        'Shows a count of icons in the ticket zoom, if the article has attachments.' =>
            '',
        'Shows a link in the menu for subscribing / unsubscribing from a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu that allows linking a ticket with another object in the ticket zoom view of the agent interface.  Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu that allows merging tickets in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to access the history of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a note in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a note to a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to delete a ticket in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to delete a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to enroll a ticket into a process in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to go back in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to lock / unlock a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link in the menu to lock/unlock tickets in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to move a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to print a ticket or an article in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the customer who requested the ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the history of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to see the owner of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the priority of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the responsible agent of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to send an outbound email in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to set a ticket as junk in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to set a ticket as pending in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to set the priority of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to zoom a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link to access article attachments via a html online viewer in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to download article attachments in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to see a zoomed email ticket in plain text.' => '',
        'Shows a link to set a ticket as junk in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a preview of the ticket overview (CustomerInfo => 1 - shows also Customer-Info, CustomerInfoMaxSize max. size in characters of Customer-Info).' =>
            '',
        'Shows a select of ticket attributes to order the queue view ticket list. The possible selections can be configured via \'TicketOverviewMenuSort###SortAttributes\'.' =>
            '',
        'Shows all both ro and rw queues in the queue view.' => '',
        'Shows all both ro and rw tickets in the service view.' => '',
        'Shows all open tickets (even if they are locked) in the escalation view of the agent interface.' =>
            '',
        'Shows all open tickets (even if they are locked) in the status view of the agent interface.' =>
            '',
        'Shows all the articles of the ticket (expanded) in the zoom view.' =>
            '',
        'Shows all the customer identifiers in a multi-select field (not useful if you have a lot of customer identifiers).' =>
            '',
        'Shows all the customer user identifiers in a multi-select field (not useful if you have a lot of customer user identifiers).' =>
            '',
        'Shows an owner selection in phone and email tickets in the agent interface.' =>
            '',
        'Shows colors for different article types in the article table.' =>
            '',
        'Shows customer history tickets in AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.' =>
            '',
        'Shows either the last customer article\'s subject or the ticket title in the small format overview.' =>
            '',
        'Shows existing parent/child queue lists in the system in the form of a tree or a list.' =>
            '',
        'Shows information on how to start OTRS Daemon' => '',
        'Shows the activated ticket attributes in the customer interface (0 = Disabled and 1 = Enabled).' =>
            '',
        'Shows the articles sorted normally or in reverse, under ticket zoom in the agent interface.' =>
            '',
        'Shows the customer user information (phone and email) in the compose screen.' =>
            '',
        'Shows the customer user\'s info in the ticket zoom view.' => '',
        'Shows the message of the day (MOTD) in the agent dashboard. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually.' =>
            '',
        'Shows the message of the day on login screen of the agent interface.' =>
            '',
        'Shows the ticket history (reverse ordered) in the agent interface.' =>
            '',
        'Shows the ticket priority options in the close ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the move ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket bulk screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket note screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows the title field in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the title fields in the close ticket screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket note screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows time in long format (days, hours, minutes), if set to "Yes"; or in short format (days, hours), if set to "No".' =>
            '',
        'Shows time use complete description (days, hours, minutes), if set to "Yes"; or just first letter (d, h, m), if set to "No".' =>
            '',
        'Simple' => '',
        'Skin' => 'Оболонка',
        'Slovak' => '',
        'Slovenian' => '',
        'Software Package Manager.' => '',
        'SolutionDiffInMin' => '',
        'SolutionInMin' => '',
        'Some description!' => '',
        'Some picture description!' => '',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the queue view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the QueueID for the key and 0 or 1 for value.' =>
            '',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the service view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the ServiceID for the key and 0 or 1 for value.' =>
            '',
        'Spam' => '',
        'Spam Assassin example setup. Ignores emails that are marked with SpamAssassin.' =>
            '',
        'Spam Assassin example setup. Moves marked mails to spam queue.' =>
            '',
        'Spanish' => '',
        'Spanish (Colombia)' => '',
        'Spanish (Mexico)' => '',
        'Spanish stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Specifies if an agent should receive email notification of his own actions.' =>
            '',
        'Specifies the available note types for this ticket mask. If the option is deselected, ArticleTypeDefault is used and the option is removed from the mask.' =>
            '',
        'Specifies the default article type for the ticket compose screen in the agent interface if the article type cannot be automatically detected.' =>
            '',
        'Specifies the different article types that will be used in the system.' =>
            '',
        'Specifies the different note types that will be used in the system.' =>
            '',
        'Specifies the directory to store the data in, if "FS" was selected for TicketStorageModule.' =>
            '',
        'Specifies the directory where SSL certificates are stored.' => '',
        'Specifies the directory where private SSL certificates are stored.' =>
            '',
        'Specifies the email address that should be used by the application when sending notifications. The email address is used to build the complete display name for the notification master (i.e. "OTRS Notifications" otrs@your.example.com). You can use the OTRS_CONFIG_FQDN variable as set in your configuation, or choose another email address.' =>
            '',
        'Specifies the email addresses to get notification messages from scheduler tasks.' =>
            '',
        'Specifies the group where the user needs rw permissions so that he can access the "SwitchToCustomer" feature.' =>
            '',
        'Specifies the name that should be used by the application when sending notifications. The sender name is used to build the complete display name for the notification master (i.e. "OTRS Notifications" otrs@your.example.com).' =>
            '',
        'Specifies the order in which the firstname and the lastname of agents will be displayed.' =>
            '',
        'Specifies the path of the file for the logo in the page header (gif|jpg|png, 700 x 100 pixel).' =>
            '',
        'Specifies the path of the file for the performance log.' => '',
        'Specifies the path to the converter that allows the view of Microsoft Excel files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of Microsoft Word files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of PDF documents, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of XML files, in the web interface.' =>
            '',
        'Specifies the text that should appear in the log file to denote a CGI script entry.' =>
            '',
        'Specifies user id of the postmaster data base.' => '',
        'Specifies whether all storage backends should be checked when looking for attachments. This is only required for installations where some attachments are in the file system, and others in the database.' =>
            '',
        'Specify how many sub directory levels to use when creating cache files. This should prevent too many cache files being in one directory.' =>
            '',
        'Specify the channel to be used to fetch OTRS Business Solution™ updates. Warning: Development releases might not be complete, your system might experience unrecoverable errors and on extreme cases could become unresponsive!' =>
            '',
        'Specify the password to authenticate for the first mirror database.' =>
            '',
        'Specify the username to authenticate for the first mirror database.' =>
            '',
        'Spell checker.' => '',
        'Stable' => '',
        'Standard available permissions for agents within the application. If more permissions are needed, they can be entered here. Permissions must be defined to be effective. Some other good permissions have also been provided built-in: note, close, pending, customer, freetext, move, compose, responsible, forward, and bounce. Make sure that "rw" is always the last registered permission.' =>
            '',
        'Start number for statistics counting. Every new stat increments this number.' =>
            '',
        'Starts a wildcard search of the active object after the link object mask is started.' =>
            '',
        'Stat#' => 'Звіт №',
        'Status view' => 'Перегляд статусу',
        'Stores cookies after the browser has been closed.' => '',
        'Strips empty lines on the ticket preview in the queue view.' => '',
        'Strips empty lines on the ticket preview in the service view.' =>
            '',
        'Swahili' => '',
        'Swedish' => '',
        'System Address Display Name' => '',
        'System Maintenance' => '',
        'System Request (%s).' => '',
        'Target' => '',
        'Templates <-> Queues' => '',
        'Textarea' => '',
        'Thai' => '',
        'The agent skin\'s InternalName which should be used in the agent interface. Please check the available skins in Frontend::Agent::Skins.' =>
            '',
        'The customer skin\'s InternalName which should be used in the customer interface. Please check the available skins in Frontend::Customer::Skins.' =>
            '',
        'The daemon registration for the scheduler cron task manager.' =>
            '',
        'The daemon registration for the scheduler future task manager.' =>
            '',
        'The daemon registration for the scheduler generic agent task manager.' =>
            '',
        'The daemon registration for the scheduler task worker.' => '',
        'The divider between TicketHook and ticket number. E.g \': \'.' =>
            '',
        'The duration in minutes after emitting an event, in which the new escalation notify and start events are suppressed.' =>
            '',
        'The format of the subject. \'Left\' means \'[TicketHook#:12345] Some Subject\', \'Right\' means \'Some Subject [TicketHook#:12345]\', \'None\' means \'Some Subject\' and no ticket number. In the latter case you should verify that the setting PostMaster::CheckFollowUpModule###0200-References is activated to recognize followups based on email headers.' =>
            '',
        'The headline shown in the customer interface.' => '',
        'The identifier for a ticket, e.g. Ticket#, Call#, MyTicket#. The default is Ticket#.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "default". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "ivory". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "ivory-slim". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "slim". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown in the header of the customer interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown on top of the login box of the agent interface. The URL to the image must be relative URL to the skin image directory.' =>
            '',
        'The maximal number of articles expanded on a single page in AgentTicketZoom.' =>
            '',
        'The maximal number of articles shown on a single page in AgentTicketZoom.' =>
            '',
        'The maximum number of mails fetched at once before reconnecting to the server.' =>
            '',
        'The text at the beginning of the subject in an email reply, e.g. RE, AW, or AS.' =>
            '',
        'The text at the beginning of the subject when an email is forwarded, e.g. FW, Fwd, or WG.' =>
            '',
        'This event module stores attributes from CustomerUser as DynamicFields tickets. Please see the setting above for how to configure the mapping.' =>
            '',
        'This is the default orange - black skin for the customer interface.' =>
            '',
        'This is the default orange - black skin.' => '',
        'This module and its PreRun() function will be executed, if defined, for every request. This module is useful to check some user options or to display news about new applications.' =>
            '',
        'This module is part of the admin area of OTRS.' => '',
        'This option defines the dynamic field in which a Process Management activity entity id is stored.' =>
            '',
        'This option defines the dynamic field in which a Process Management process entity id is stored.' =>
            '',
        'This option defines the process tickets default lock.' => '',
        'This option defines the process tickets default priority.' => '',
        'This option defines the process tickets default queue.' => '',
        'This option defines the process tickets default state.' => '',
        'This option will deny the access to customer company tickets, which are not created by the customer user.' =>
            '',
        'This setting allows you to override the built-in country list with your own list of countries. This is particularly handy if you just want to use a small select group of countries.' =>
            '',
        'This will allow the system to send text messages via SMS.' => '',
        'Ticket Close.' => '',
        'Ticket Compose Bounce Email.' => '',
        'Ticket Compose email Answer.' => '',
        'Ticket Customer.' => '',
        'Ticket Forward Email.' => '',
        'Ticket FreeText.' => '',
        'Ticket History.' => '',
        'Ticket Lock.' => '',
        'Ticket Merge.' => '',
        'Ticket Move.' => '',
        'Ticket Note.' => '',
        'Ticket Notifications' => 'Сповіщення заявок',
        'Ticket Outbound Email.' => '',
        'Ticket Owner.' => '',
        'Ticket Pending.' => '',
        'Ticket Print.' => '',
        'Ticket Priority.' => '',
        'Ticket Queue Overview' => '',
        'Ticket Responsible.' => '',
        'Ticket Watcher' => '',
        'Ticket Zoom.' => '',
        'Ticket bulk module.' => '',
        'Ticket event module that triggers the escalation stop events.' =>
            '',
        'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).' => 'Заявка переміщена в чергу «%s» (%s) із черги «%s» (%s).',
        'Ticket notifications' => 'Сповіщення заявок',
        'Ticket overview' => 'Перегляд заявки',
        'Ticket plain view of an email.' => '',
        'Ticket title' => '',
        'Ticket zoom view.' => '',
        'TicketNumber' => '',
        'Tickets.' => '',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            '',
        'Title updated: Old: "%s", New: "%s"' => '',
        'To accept login information, such as an EULA or license.' => '',
        'To download attachments.' => '',
        'Toggles display of OTRS FeatureAddons list in PackageManager.' =>
            '',
        'Toolbar Item for a shortcut. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Transport selection for ticket notifications.' => '',
        'Tree view' => '',
        'Triggers ticket escalation events and notification events for escalation.' =>
            '',
        'Turkish' => '',
        'Turns off SSL certificate validation, for example if you use a transparent HTTPS proxy. Use at your own risk!' =>
            '',
        'Turns on drag and drop for the main navigation.' => '',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            '',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            '',
        'Ukrainian' => '',
        'Unlock tickets that are past their unlock timeout.' => '',
        'Unlock tickets whenever a note is added and the owner is out of office.' =>
            'Розблоковує тікети, якщо додається нотатка і власник у статусі «не при справах».',
        'Unlocked ticket.' => 'Розблокована заявка.',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            '',
        'Updated SLA to %s (ID=%s).' => '',
        'Updated Service to %s (ID=%s).' => '',
        'Updated Type to %s (ID=%s).' => '',
        'Updated: %s' => '',
        'Updated: %s=%s;%s=%s;%s=%s;' => '',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            '',
        'Updates the ticket index accelerator.' => '',
        'Upload your PGP key.' => '',
        'Upload your S/MIME certificate.' => '',
        'Use new type of select and autocomplete fields in agent interface, where applicable (InputFields).' =>
            '',
        'Use new type of select and autocomplete fields in customer interface, where applicable (InputFields).' =>
            '',
        'UserFirstname' => '',
        'UserLastname' => '',
        'Uses Cc recipients in reply Cc list on compose an email answer in the ticket compose screen of the agent interface.' =>
            '',
        'Uses richtext for viewing and editing ticket notification.' => '',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard templates, auto responses and notifications.' =>
            '',
        'Vietnam' => '',
        'View performance benchmark results.' => 'Перегляд результатів виміру продуктивності.',
        'Watch this ticket' => '',
        'Watched Tickets.' => '',
        'We are performing scheduled maintenance.' => '',
        'We are performing scheduled maintenance. Login is temporarily not available.' =>
            '',
        'We are performing scheduled maintenance. We should be back online shortly.' =>
            '',
        'Web View' => '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the body of this note (this text cannot be changed by the agent).' =>
            '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the subject of this note (this subject cannot be changed by the agent).' =>
            '',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            '',
        'Whether or not to collect meta information from articles using filters configured in Ticket::Frontend::ZoomCollectMetaFilters.' =>
            '',
        'Yes, but hide archived tickets' => '',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' =>
            '',
        'Your queue selection of your preferred queues. You also get notified about those queues via email if enabled.' =>
            '',
        'Your service selection of your preferred services. You also get notified about those services via email if enabled.' =>
            '',
        'attachment' => '',
        'bounce' => '',
        'compose' => '',
        'debug' => '',
        'error' => '',
        'forward' => '',
        'info' => '',
        'inline' => '',
        'notice' => '',
        'pending' => '',
        'responsible' => '',
        'stats' => '',

    };
    # $$STOP$$
    return;
}

1;
