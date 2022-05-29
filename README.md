# [CYBER_HAIL](https://sites.google.com/view/operationrussia/cyber_hail)
кібер град
## DDoS whith Google Cloud Shell
    
Застосунок CYBER_HAIL(кібер град) призначений для автоматичного розгортання маштабних DDoS-атак з мінімальним навантаженням локальних ресурсів, використовуючи сервіс Google Cloud Shell (*хмарне середовище на основі Debian*).    
    
Якщо у Вас є змога задіяти від 1 до кількох десятків акаунтів Вам підійде **["браузерний спосіб"](https://github.com/Operation-Stop-russia/Gcloudshell_ddos/blob/main/README.md#ddos-whith-google-cloud-shell)**    

Для використання CYBER_HAIL потрібна велика кількість Google-акаунтів (75-600 шт на 1 ПК).    
*(Звертаю увагу тих в кого розгорнутий GSuite for Education (Workspace). Адміністратори GSuite мають змогу запускати масове оновлення користувачів і надзвичайно швидко створювати акаунти списками)*
    
Тривалiсть сеансу GoogleShell - до 12 годин. Тижнева квота на використання сервісу акаунтом - 60 годин.  
Для забезпечення режиму 24/7 потрiбно мати 3 комплекти акаунтiв на 1 ПК i використовувати їх почерзi. 
    
CYBER_HAIL налаштований на запуск комплектів по 25, 50, 100 та 200 сеансів (*25 додано за проханнями тих хто створює акаунти вручну*;). Отже, потрібно 75, 150, 300 або 600 акаунтів Google (*GSuite також підійдуть, тільки потрібно щоб був увімкнений доступ до CloudPlatform та акаунт не був у віковій групі до 18*)

Оптимізовано використання локальних ресурсів ПК (*на 1 сеанс витрачається <4 МБ оперативної памяті*)    
Автоматизовано - ініціалізація, пропуск PuttySecurityAlert, розгортання та запуск атаки, згортання вікон, закриття непотрібних процесів та неактивних сеансів.
Трудомістким залишається процес першої авторизації акаунтів але виконувати його треба 1 раз.
    
#### Покрокова інструкція 
**1. Завантажуємо та розпаковуємо** https://github.com/Operation-Stop-russia/CYBER_HAIL/releases/latest    
(*Файл CYBER_HAIL-beta.exe  - SFX ZIP архів, що розпакується і відкриє папку CYBER_HAIL-(beta)*)   
![Folder](https://github.com/Operation-Stop-russia/CYBER_HAIL/blob/main/Sources%20(*.bat%20and%20*.exe%20in%20readable%20formats)/img/folder.jpg "CYBER_HAIL Folder")  
***Запускатор** - для запуску головного меню; **Зупинятор** для швидкого завершення всіх сеансів;    
**Убиватор** - (якщо щось пішло не так) завершення всіх процесів що міг запустити кібер град*    
    
**2. Стартуєм із Запускатора** потрапляєм в головне меню:    
![main_menu](https://github.com/Operation-Stop-russia/CYBER_HAIL/blob/main/Sources%20(*.bat%20and%20*.exe%20in%20readable%20formats)/img/main_menu.jpg "CYBER_HAIL MainMenu")     
**Далі потрібно встановити та налаштувати SDK (1 раз)**    
**3. Введіть 0** - запустится інсталятор GoogleCloudSDK. Встановiть SDK з параметрами за замовчуванням. (*Вiкно консолi, що з'явиться при завершеннi можна просто закрити*) Запустiть додаток повторно пiсля завершення iнсталяцiї SDK.      
**4.  Введіть 00** - для запуску процесу ініціалізації/авторизації акаунтів.     
Процес додавання акаунтів вдалось автоматизувати в CLI тільки частково. gcloud_init.bat значно полегшує процес але залишається багато ручної роботи. Для додавання акаунтів ввести 00 в Запускаторі та копіпастити або застосувати [MacroRecorder](https://www.macrorecorder.com/MacroRecorder_Portable.zip) (опис та мій макрос - **[тут](https://github.com/Operation-Stop-russia/CYBER_HAIL/tree/main/Sources%20(*.bat%20and%20*.exe%20in%20readable%20formats)/authorization%20macro)**)     
Процедура авторизації кожного акаунта виконується 1 раз. Процес можна переривати. Авторизовані акаунти зберігаються. Щоб переглянути список авторизованих акаунтів введіть "01"     
Рекомендується одразу додати всi три комплекти акаунтiв     
**5. Введіть 000** - щоб запустити патчер:     
![Patcher](https://github.com/Operation-Stop-russia/CYBER_HAIL/blob/main/Sources%20(*.bat%20and%20*.exe%20in%20readable%20formats)/img/patcher.jpg)    
Оберіть команду та виконайте патч. (*патч можна змінити в будь-який момент*)        
    
#### ! Налаштування завершено
    
**6. Запускаємо розгортання атаки** обравши відповідну команду в Запускаторі та не рідше чим раз на 12 годин перезапускати атаку (*можна вижимати 60 годин з одного комплекта, а тоді переходити до іншого але раджу всеж чергувати, наприклад:  додали 300 акаунтів, для запуску першої атаки вводимо в Запускаторі - "3", через 12 годин другий комплект - команда "33", ще через 12 годин - "333". Також хороша практика - запуски по 8 годин, так щоб за добу проганяти всі три комплекти*)
    
Перед перезапуском запустіть Зупинятор.
    
Для зменшення навантаження розгортання відбувається поетапно (50 - 2 по 25, 100 - 4 по 25, 200 - 4 по 50).    
Під час розгортання працює автоматичне звертання вікон, пропуск  Putty SecurityAlert (*авто прийом ключа*) та закривання неактивних сеансів (*перевірка неактивних раз на 3 секунди, щоб можна було моніторити, при бажанні можна вимкнути (значок в треї)*). По завершенню розгортання на екран виведуться мініатюри запущених сесій (Ctrl+Alt+Tab)     
Орієнтовний час розгортання 50 сеансів - 3 хв., 100 сеансів - 7 хв., 200 сеансів - 10 хв.    

Додано ведення журналу запусків (start_log.txt)
    
#### Системні вимоги:      
OS Windows.    
В процесі розгортання 50/100/200 сеансів знадобиться 1,5/ 2 /3,5 ГБ вільної оперативної пам'яті.    
Після розгортання для утримання підключення використовується <4МБ  пам'яті на сеанс.    
    
CPU - оптимальним є розрахунок до 50 сеансів на потік.
    
Нормальним є явище, що протягом 12 годин вмирає 10-15% сесій. Якщо відвалюється більше 20% перевірте на предмет втручання в роботу стороннього ПЗ (*антивірусників, оптимізаторів ітп*) та стабільність інтернет з'єднання (*грає роль не так швидкість з'єднання, як саме - стабільність*)
    
**Слідкуйте за оновленнями** https://github.com/Operation-Stop-russia/CYBER_HAIL/releases/latest 
