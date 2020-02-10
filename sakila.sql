#sudo apt-get update
#sudo apt-get install mysql-server
#sudo mysql_secure_installation utility

#mysql -h localhost -p -u root < sakila-schema.sql
#mysql -h localhost -p -u root < sakila-data.sql
#(ou mysql> SOURCE C:/temp/sakila-db/sakila-schema.sql;
#    mysql> SOURCE C:/temp/sakila-db/sakila-data.sql;)
#mysql -u root -p

#https://towardsdatascience.com/jupyter-magics-with-sql-921370099589
#pip install sqlalchemy # ORM for databases
#pip install ipython-sql # SQL magic function

mysql> select * from actor
    -> limit 10;
+----------+------------+--------------+---------------------+
| actor_id | first_name | last_name    | last_update         |
+----------+------------+--------------+---------------------+
|        1 | PENELOPE   | GUINESS      | 2006-02-15 04:34:33 |
|        2 | NICK       | WAHLBERG     | 2006-02-15 04:34:33 |
|        3 | ED         | CHASE        | 2006-02-15 04:34:33 |
|        4 | JENNIFER   | DAVIS        | 2006-02-15 04:34:33 |
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        6 | BETTE      | NICHOLSON    | 2006-02-15 04:34:33 |
|        7 | GRACE      | MOSTEL       | 2006-02-15 04:34:33 |
|        8 | MATTHEW    | JOHANSSON    | 2006-02-15 04:34:33 |
|        9 | JOE        | SWANK        | 2006-02-15 04:34:33 |
|       10 | CHRISTIAN  | GABLE        | 2006-02-15 04:34:33 |
+----------+------------+--------------+---------------------+
10 rows in set (0.00 sec)

mysql> select first_name, last_name, concat(first_name,' ',last_name) as Actor_name from actor;
+-------------+--------------+----------------------+
| first_name  | last_name    | Actor_name           |
+-------------+--------------+----------------------+
| PENELOPE    | GUINESS      | PENELOPE GUINESS     |
| NICK        | WAHLBERG     | NICK WAHLBERG        |
| ED          | CHASE        | ED CHASE             |
| JENNIFER    | DAVIS        | JENNIFER DAVIS       |
| JOHNNY      | LOLLOBRIGIDA | JOHNNY LOLLOBRIGIDA  |
| BETTE       | NICHOLSON    | BETTE NICHOLSON      |
| GRACE       | MOSTEL       | GRACE MOSTEL         |
| MATTHEW     | JOHANSSON    | MATTHEW JOHANSSON    |
| JOE         | SWANK        | JOE SWANK            |
| CHRISTIAN   | GABLE        | CHRISTIAN GABLE      |
| ZERO        | CAGE         | ZERO CAGE            |
| KARL        | BERRY        | KARL BERRY           |
| UMA         | WOOD         | UMA WOOD             |
| VIVIEN      | BERGEN       | VIVIEN BERGEN        |
| CUBA        | OLIVIER      | CUBA OLIVIER         |
| FRED        | COSTNER      | FRED COSTNER         |
| HELEN       | VOIGHT       | HELEN VOIGHT         |
| DAN         | TORN         | DAN TORN             |
| BOB         | FAWCETT      | BOB FAWCETT          |
| LUCILLE     | TRACY        | LUCILLE TRACY        |
| KIRSTEN     | PALTROW      | KIRSTEN PALTROW      |
| ELVIS       | MARX         | ELVIS MARX           |
| SANDRA      | KILMER       | SANDRA KILMER        |
| CAMERON     | STREEP       | CAMERON STREEP       |
| KEVIN       | BLOOM        | KEVIN BLOOM          |
| RIP         | CRAWFORD     | RIP CRAWFORD         |
| JULIA       | MCQUEEN      | JULIA MCQUEEN        |
| WOODY       | HOFFMAN      | WOODY HOFFMAN        |
| ALEC        | WAYNE        | ALEC WAYNE           |
| SANDRA      | PECK         | SANDRA PECK          |
| SISSY       | SOBIESKI     | SISSY SOBIESKI       |
| TIM         | HACKMAN      | TIM HACKMAN          |
| MILLA       | PECK         | MILLA PECK           |
| AUDREY      | OLIVIER      | AUDREY OLIVIER       |
| JUDY        | DEAN         | JUDY DEAN            |
| BURT        | DUKAKIS      | BURT DUKAKIS         |
| VAL         | BOLGER       | VAL BOLGER           |
| TOM         | MCKELLEN     | TOM MCKELLEN         |
| GOLDIE      | BRODY        | GOLDIE BRODY         |
| JOHNNY      | CAGE         | JOHNNY CAGE          |
| JODIE       | DEGENERES    | JODIE DEGENERES      |
| TOM         | MIRANDA      | TOM MIRANDA          |
| KIRK        | JOVOVICH     | KIRK JOVOVICH        |
| NICK        | STALLONE     | NICK STALLONE        |
| REESE       | KILMER       | REESE KILMER         |
| PARKER      | GOLDBERG     | PARKER GOLDBERG      |
| JULIA       | BARRYMORE    | JULIA BARRYMORE      |
| FRANCES     | DAY-LEWIS    | FRANCES DAY-LEWIS    |
| ANNE        | CRONYN       | ANNE CRONYN          |
| NATALIE     | HOPKINS      | NATALIE HOPKINS      |
| GARY        | PHOENIX      | GARY PHOENIX         |
| CARMEN      | HUNT         | CARMEN HUNT          |
| MENA        | TEMPLE       | MENA TEMPLE          |
| PENELOPE    | PINKETT      | PENELOPE PINKETT     |
| FAY         | KILMER       | FAY KILMER           |
| DAN         | HARRIS       | DAN HARRIS           |
| JUDE        | CRUISE       | JUDE CRUISE          |
| CHRISTIAN   | AKROYD       | CHRISTIAN AKROYD     |
| DUSTIN      | TAUTOU       | DUSTIN TAUTOU        |
| HENRY       | BERRY        | HENRY BERRY          |
| CHRISTIAN   | NEESON       | CHRISTIAN NEESON     |
| JAYNE       | NEESON       | JAYNE NEESON         |
| CAMERON     | WRAY         | CAMERON WRAY         |
| RAY         | JOHANSSON    | RAY JOHANSSON        |
| ANGELA      | HUDSON       | ANGELA HUDSON        |
| MARY        | TANDY        | MARY TANDY           |
| JESSICA     | BAILEY       | JESSICA BAILEY       |
| RIP         | WINSLET      | RIP WINSLET          |
| KENNETH     | PALTROW      | KENNETH PALTROW      |
| MICHELLE    | MCCONAUGHEY  | MICHELLE MCCONAUGHEY |
| ADAM        | GRANT        | ADAM GRANT           |
| SEAN        | WILLIAMS     | SEAN WILLIAMS        |
| GARY        | PENN         | GARY PENN            |
| MILLA       | KEITEL       | MILLA KEITEL         |
| BURT        | POSEY        | BURT POSEY           |
| ANGELINA    | ASTAIRE      | ANGELINA ASTAIRE     |
| CARY        | MCCONAUGHEY  | CARY MCCONAUGHEY     |
| GROUCHO     | SINATRA      | GROUCHO SINATRA      |
| MAE         | HOFFMAN      | MAE HOFFMAN          |
| RALPH       | CRUZ         | RALPH CRUZ           |
| SCARLETT    | DAMON        | SCARLETT DAMON       |
| WOODY       | JOLIE        | WOODY JOLIE          |
| BEN         | WILLIS       | BEN WILLIS           |
| JAMES       | PITT         | JAMES PITT           |
| MINNIE      | ZELLWEGER    | MINNIE ZELLWEGER     |
| GREG        | CHAPLIN      | GREG CHAPLIN         |
| SPENCER     | PECK         | SPENCER PECK         |
| KENNETH     | PESCI        | KENNETH PESCI        |
| CHARLIZE    | DENCH        | CHARLIZE DENCH       |
| SEAN        | GUINESS      | SEAN GUINESS         |
| CHRISTOPHER | BERRY        | CHRISTOPHER BERRY    |
| KIRSTEN     | AKROYD       | KIRSTEN AKROYD       |
| ELLEN       | PRESLEY      | ELLEN PRESLEY        |
| KENNETH     | TORN         | KENNETH TORN         |
| DARYL       | WAHLBERG     | DARYL WAHLBERG       |
| GENE        | WILLIS       | GENE WILLIS          |
| MEG         | HAWKE        | MEG HAWKE            |
| CHRIS       | BRIDGES      | CHRIS BRIDGES        |
| JIM         | MOSTEL       | JIM MOSTEL           |
| SPENCER     | DEPP         | SPENCER DEPP         |
| SUSAN       | DAVIS        | SUSAN DAVIS          |
| WALTER      | TORN         | WALTER TORN          |
| MATTHEW     | LEIGH        | MATTHEW LEIGH        |
| PENELOPE    | CRONYN       | PENELOPE CRONYN      |
| SIDNEY      | CROWE        | SIDNEY CROWE         |
| GROUCHO     | DUNST        | GROUCHO DUNST        |
| GINA        | DEGENERES    | GINA DEGENERES       |
| WARREN      | NOLTE        | WARREN NOLTE         |
| SYLVESTER   | DERN         | SYLVESTER DERN       |
| SUSAN       | DAVIS        | SUSAN DAVIS          |
| CAMERON     | ZELLWEGER    | CAMERON ZELLWEGER    |
| RUSSELL     | BACALL       | RUSSELL BACALL       |
| MORGAN      | HOPKINS      | MORGAN HOPKINS       |
| MORGAN      | MCDORMAND    | MORGAN MCDORMAND     |
| HARRISON    | BALE         | HARRISON BALE        |
| DAN         | STREEP       | DAN STREEP           |
| RENEE       | TRACY        | RENEE TRACY          |
| CUBA        | ALLEN        | CUBA ALLEN           |
| WARREN      | JACKMAN      | WARREN JACKMAN       |
| PENELOPE    | MONROE       | PENELOPE MONROE      |
| LIZA        | BERGMAN      | LIZA BERGMAN         |
| SALMA       | NOLTE        | SALMA NOLTE          |
| JULIANNE    | DENCH        | JULIANNE DENCH       |
| SCARLETT    | BENING       | SCARLETT BENING      |
| ALBERT      | NOLTE        | ALBERT NOLTE         |
| FRANCES     | TOMEI        | FRANCES TOMEI        |
| KEVIN       | GARLAND      | KEVIN GARLAND        |
| CATE        | MCQUEEN      | CATE MCQUEEN         |
| DARYL       | CRAWFORD     | DARYL CRAWFORD       |
| GRETA       | KEITEL       | GRETA KEITEL         |
| JANE        | JACKMAN      | JANE JACKMAN         |
| ADAM        | HOPPER       | ADAM HOPPER          |
| RICHARD     | PENN         | RICHARD PENN         |
| GENE        | HOPKINS      | GENE HOPKINS         |
| RITA        | REYNOLDS     | RITA REYNOLDS        |
| ED          | MANSFIELD    | ED MANSFIELD         |
| MORGAN      | WILLIAMS     | MORGAN WILLIAMS      |
| LUCILLE     | DEE          | LUCILLE DEE          |
| EWAN        | GOODING      | EWAN GOODING         |
| WHOOPI      | HURT         | WHOOPI HURT          |
| CATE        | HARRIS       | CATE HARRIS          |
| JADA        | RYDER        | JADA RYDER           |
| RIVER       | DEAN         | RIVER DEAN           |
| ANGELA      | WITHERSPOON  | ANGELA WITHERSPOON   |
| KIM         | ALLEN        | KIM ALLEN            |
| ALBERT      | JOHANSSON    | ALBERT JOHANSSON     |
| FAY         | WINSLET      | FAY WINSLET          |
| EMILY       | DEE          | EMILY DEE            |
| RUSSELL     | TEMPLE       | RUSSELL TEMPLE       |
| JAYNE       | NOLTE        | JAYNE NOLTE          |
| GEOFFREY    | HESTON       | GEOFFREY HESTON      |
| BEN         | HARRIS       | BEN HARRIS           |
| MINNIE      | KILMER       | MINNIE KILMER        |
| MERYL       | GIBSON       | MERYL GIBSON         |
| IAN         | TANDY        | IAN TANDY            |
| FAY         | WOOD         | FAY WOOD             |
| GRETA       | MALDEN       | GRETA MALDEN         |
| VIVIEN      | BASINGER     | VIVIEN BASINGER      |
| LAURA       | BRODY        | LAURA BRODY          |
| CHRIS       | DEPP         | CHRIS DEPP           |
| HARVEY      | HOPE         | HARVEY HOPE          |
| OPRAH       | KILMER       | OPRAH KILMER         |
| CHRISTOPHER | WEST         | CHRISTOPHER WEST     |
| HUMPHREY    | WILLIS       | HUMPHREY WILLIS      |
| AL          | GARLAND      | AL GARLAND           |
| NICK        | DEGENERES    | NICK DEGENERES       |
| LAURENCE    | BULLOCK      | LAURENCE BULLOCK     |
| WILL        | WILSON       | WILL WILSON          |
| KENNETH     | HOFFMAN      | KENNETH HOFFMAN      |
| MENA        | HOPPER       | MENA HOPPER          |
| OLYMPIA     | PFEIFFER     | OLYMPIA PFEIFFER     |
| GROUCHO     | WILLIAMS     | GROUCHO WILLIAMS     |
| ALAN        | DREYFUSS     | ALAN DREYFUSS        |
| MICHAEL     | BENING       | MICHAEL BENING       |
| WILLIAM     | HACKMAN      | WILLIAM HACKMAN      |
| JON         | CHASE        | JON CHASE            |
| GENE        | MCKELLEN     | GENE MCKELLEN        |
| LISA        | MONROE       | LISA MONROE          |
| ED          | GUINESS      | ED GUINESS           |
| JEFF        | SILVERSTONE  | JEFF SILVERSTONE     |
| MATTHEW     | CARREY       | MATTHEW CARREY       |
| DEBBIE      | AKROYD       | DEBBIE AKROYD        |
| RUSSELL     | CLOSE        | RUSSELL CLOSE        |
| HUMPHREY    | GARLAND      | HUMPHREY GARLAND     |
| MICHAEL     | BOLGER       | MICHAEL BOLGER       |
| JULIA       | ZELLWEGER    | JULIA ZELLWEGER      |
| RENEE       | BALL         | RENEE BALL           |
| ROCK        | DUKAKIS      | ROCK DUKAKIS         |
| CUBA        | BIRCH        | CUBA BIRCH           |
| AUDREY      | BAILEY       | AUDREY BAILEY        |
| GREGORY     | GOODING      | GREGORY GOODING      |
| JOHN        | SUVARI       | JOHN SUVARI          |
| BURT        | TEMPLE       | BURT TEMPLE          |
| MERYL       | ALLEN        | MERYL ALLEN          |
| JAYNE       | SILVERSTONE  | JAYNE SILVERSTONE    |
| BELA        | WALKEN       | BELA WALKEN          |
| REESE       | WEST         | REESE WEST           |
| MARY        | KEITEL       | MARY KEITEL          |
| JULIA       | FAWCETT      | JULIA FAWCETT        |
| THORA       | TEMPLE       | THORA TEMPLE         |
+-------------+--------------+----------------------+
200 rows in set (0.00 sec)

mysql> select first_name, last_name, concat(lower(first_name),' ',last_name) as Actor_name from actor;
+-------------+--------------+----------------------+
| first_name  | last_name    | Actor_name           |
+-------------+--------------+----------------------+
| PENELOPE    | GUINESS      | penelope GUINESS     |
| NICK        | WAHLBERG     | nick WAHLBERG        |
| ED          | CHASE        | ed CHASE             |
| JENNIFER    | DAVIS        | jennifer DAVIS       |
| JOHNNY      | LOLLOBRIGIDA | johnny LOLLOBRIGIDA  |
| BETTE       | NICHOLSON    | bette NICHOLSON      |
| GRACE       | MOSTEL       | grace MOSTEL         |
| MATTHEW     | JOHANSSON    | matthew JOHANSSON    |
| JOE         | SWANK        | joe SWANK            |
| CHRISTIAN   | GABLE        | christian GABLE      |
| ZERO        | CAGE         | zero CAGE            |
| KARL        | BERRY        | karl BERRY           |
| UMA         | WOOD         | uma WOOD             |
| VIVIEN      | BERGEN       | vivien BERGEN        |
| CUBA        | OLIVIER      | cuba OLIVIER         |
| FRED        | COSTNER      | fred COSTNER         |
| HELEN       | VOIGHT       | helen VOIGHT         |
| DAN         | TORN         | dan TORN             |
| BOB         | FAWCETT      | bob FAWCETT          |
| LUCILLE     | TRACY        | lucille TRACY        |
| KIRSTEN     | PALTROW      | kirsten PALTROW      |
| ELVIS       | MARX         | elvis MARX           |
| SANDRA      | KILMER       | sandra KILMER        |
| CAMERON     | STREEP       | cameron STREEP       |
| KEVIN       | BLOOM        | kevin BLOOM          |
| RIP         | CRAWFORD     | rip CRAWFORD         |
| JULIA       | MCQUEEN      | julia MCQUEEN        |
| WOODY       | HOFFMAN      | woody HOFFMAN        |
| ALEC        | WAYNE        | alec WAYNE           |
| SANDRA      | PECK         | sandra PECK          |
| SISSY       | SOBIESKI     | sissy SOBIESKI       |
| TIM         | HACKMAN      | tim HACKMAN          |
| MILLA       | PECK         | milla PECK           |
| AUDREY      | OLIVIER      | audrey OLIVIER       |
| JUDY        | DEAN         | judy DEAN            |
| BURT        | DUKAKIS      | burt DUKAKIS         |
| VAL         | BOLGER       | val BOLGER           |
| TOM         | MCKELLEN     | tom MCKELLEN         |
| GOLDIE      | BRODY        | goldie BRODY         |
| JOHNNY      | CAGE         | johnny CAGE          |
| JODIE       | DEGENERES    | jodie DEGENERES      |
| TOM         | MIRANDA      | tom MIRANDA          |
| KIRK        | JOVOVICH     | kirk JOVOVICH        |
| NICK        | STALLONE     | nick STALLONE        |
| REESE       | KILMER       | reese KILMER         |
| PARKER      | GOLDBERG     | parker GOLDBERG      |
| JULIA       | BARRYMORE    | julia BARRYMORE      |
| FRANCES     | DAY-LEWIS    | frances DAY-LEWIS    |
| ANNE        | CRONYN       | anne CRONYN          |
| NATALIE     | HOPKINS      | natalie HOPKINS      |
| GARY        | PHOENIX      | gary PHOENIX         |
| CARMEN      | HUNT         | carmen HUNT          |
| MENA        | TEMPLE       | mena TEMPLE          |
| PENELOPE    | PINKETT      | penelope PINKETT     |
| FAY         | KILMER       | fay KILMER           |
| DAN         | HARRIS       | dan HARRIS           |
| JUDE        | CRUISE       | jude CRUISE          |
| CHRISTIAN   | AKROYD       | christian AKROYD     |
| DUSTIN      | TAUTOU       | dustin TAUTOU        |
| HENRY       | BERRY        | henry BERRY          |
| CHRISTIAN   | NEESON       | christian NEESON     |
| JAYNE       | NEESON       | jayne NEESON         |
| CAMERON     | WRAY         | cameron WRAY         |
| RAY         | JOHANSSON    | ray JOHANSSON        |
| ANGELA      | HUDSON       | angela HUDSON        |
| MARY        | TANDY        | mary TANDY           |
| JESSICA     | BAILEY       | jessica BAILEY       |
| RIP         | WINSLET      | rip WINSLET          |
| KENNETH     | PALTROW      | kenneth PALTROW      |
| MICHELLE    | MCCONAUGHEY  | michelle MCCONAUGHEY |
| ADAM        | GRANT        | adam GRANT           |
| SEAN        | WILLIAMS     | sean WILLIAMS        |
| GARY        | PENN         | gary PENN            |
| MILLA       | KEITEL       | milla KEITEL         |
| BURT        | POSEY        | burt POSEY           |
| ANGELINA    | ASTAIRE      | angelina ASTAIRE     |
| CARY        | MCCONAUGHEY  | cary MCCONAUGHEY     |
| GROUCHO     | SINATRA      | groucho SINATRA      |
| MAE         | HOFFMAN      | mae HOFFMAN          |
| RALPH       | CRUZ         | ralph CRUZ           |
| SCARLETT    | DAMON        | scarlett DAMON       |
| WOODY       | JOLIE        | woody JOLIE          |
| BEN         | WILLIS       | ben WILLIS           |
| JAMES       | PITT         | james PITT           |
| MINNIE      | ZELLWEGER    | minnie ZELLWEGER     |
| GREG        | CHAPLIN      | greg CHAPLIN         |
| SPENCER     | PECK         | spencer PECK         |
| KENNETH     | PESCI        | kenneth PESCI        |
| CHARLIZE    | DENCH        | charlize DENCH       |
| SEAN        | GUINESS      | sean GUINESS         |
| CHRISTOPHER | BERRY        | christopher BERRY    |
| KIRSTEN     | AKROYD       | kirsten AKROYD       |
| ELLEN       | PRESLEY      | ellen PRESLEY        |
| KENNETH     | TORN         | kenneth TORN         |
| DARYL       | WAHLBERG     | daryl WAHLBERG       |
| GENE        | WILLIS       | gene WILLIS          |
| MEG         | HAWKE        | meg HAWKE            |
| CHRIS       | BRIDGES      | chris BRIDGES        |
| JIM         | MOSTEL       | jim MOSTEL           |
| SPENCER     | DEPP         | spencer DEPP         |
| SUSAN       | DAVIS        | susan DAVIS          |
| WALTER      | TORN         | walter TORN          |
| MATTHEW     | LEIGH        | matthew LEIGH        |
| PENELOPE    | CRONYN       | penelope CRONYN      |
| SIDNEY      | CROWE        | sidney CROWE         |
| GROUCHO     | DUNST        | groucho DUNST        |
| GINA        | DEGENERES    | gina DEGENERES       |
| WARREN      | NOLTE        | warren NOLTE         |
| SYLVESTER   | DERN         | sylvester DERN       |
| SUSAN       | DAVIS        | susan DAVIS          |
| CAMERON     | ZELLWEGER    | cameron ZELLWEGER    |
| RUSSELL     | BACALL       | russell BACALL       |
| MORGAN      | HOPKINS      | morgan HOPKINS       |
| MORGAN      | MCDORMAND    | morgan MCDORMAND     |
| HARRISON    | BALE         | harrison BALE        |
| DAN         | STREEP       | dan STREEP           |
| RENEE       | TRACY        | renee TRACY          |
| CUBA        | ALLEN        | cuba ALLEN           |
| WARREN      | JACKMAN      | warren JACKMAN       |
| PENELOPE    | MONROE       | penelope MONROE      |
| LIZA        | BERGMAN      | liza BERGMAN         |
| SALMA       | NOLTE        | salma NOLTE          |
| JULIANNE    | DENCH        | julianne DENCH       |
| SCARLETT    | BENING       | scarlett BENING      |
| ALBERT      | NOLTE        | albert NOLTE         |
| FRANCES     | TOMEI        | frances TOMEI        |
| KEVIN       | GARLAND      | kevin GARLAND        |
| CATE        | MCQUEEN      | cate MCQUEEN         |
| DARYL       | CRAWFORD     | daryl CRAWFORD       |
| GRETA       | KEITEL       | greta KEITEL         |
| JANE        | JACKMAN      | jane JACKMAN         |
| ADAM        | HOPPER       | adam HOPPER          |
| RICHARD     | PENN         | richard PENN         |
| GENE        | HOPKINS      | gene HOPKINS         |
| RITA        | REYNOLDS     | rita REYNOLDS        |
| ED          | MANSFIELD    | ed MANSFIELD         |
| MORGAN      | WILLIAMS     | morgan WILLIAMS      |
| LUCILLE     | DEE          | lucille DEE          |
| EWAN        | GOODING      | ewan GOODING         |
| WHOOPI      | HURT         | whoopi HURT          |
| CATE        | HARRIS       | cate HARRIS          |
| JADA        | RYDER        | jada RYDER           |
| RIVER       | DEAN         | river DEAN           |
| ANGELA      | WITHERSPOON  | angela WITHERSPOON   |
| KIM         | ALLEN        | kim ALLEN            |
| ALBERT      | JOHANSSON    | albert JOHANSSON     |
| FAY         | WINSLET      | fay WINSLET          |
| EMILY       | DEE          | emily DEE            |
| RUSSELL     | TEMPLE       | russell TEMPLE       |
| JAYNE       | NOLTE        | jayne NOLTE          |
| GEOFFREY    | HESTON       | geoffrey HESTON      |
| BEN         | HARRIS       | ben HARRIS           |
| MINNIE      | KILMER       | minnie KILMER        |
| MERYL       | GIBSON       | meryl GIBSON         |
| IAN         | TANDY        | ian TANDY            |
| FAY         | WOOD         | fay WOOD             |
| GRETA       | MALDEN       | greta MALDEN         |
| VIVIEN      | BASINGER     | vivien BASINGER      |
| LAURA       | BRODY        | laura BRODY          |
| CHRIS       | DEPP         | chris DEPP           |
| HARVEY      | HOPE         | harvey HOPE          |
| OPRAH       | KILMER       | oprah KILMER         |
| CHRISTOPHER | WEST         | christopher WEST     |
| HUMPHREY    | WILLIS       | humphrey WILLIS      |
| AL          | GARLAND      | al GARLAND           |
| NICK        | DEGENERES    | nick DEGENERES       |
| LAURENCE    | BULLOCK      | laurence BULLOCK     |
| WILL        | WILSON       | will WILSON          |
| KENNETH     | HOFFMAN      | kenneth HOFFMAN      |
| MENA        | HOPPER       | mena HOPPER          |
| OLYMPIA     | PFEIFFER     | olympia PFEIFFER     |
| GROUCHO     | WILLIAMS     | groucho WILLIAMS     |
| ALAN        | DREYFUSS     | alan DREYFUSS        |
| MICHAEL     | BENING       | michael BENING       |
| WILLIAM     | HACKMAN      | william HACKMAN      |
| JON         | CHASE        | jon CHASE            |
| GENE        | MCKELLEN     | gene MCKELLEN        |
| LISA        | MONROE       | lisa MONROE          |
| ED          | GUINESS      | ed GUINESS           |
| JEFF        | SILVERSTONE  | jeff SILVERSTONE     |
| MATTHEW     | CARREY       | matthew CARREY       |
| DEBBIE      | AKROYD       | debbie AKROYD        |
| RUSSELL     | CLOSE        | russell CLOSE        |
| HUMPHREY    | GARLAND      | humphrey GARLAND     |
| MICHAEL     | BOLGER       | michael BOLGER       |
| JULIA       | ZELLWEGER    | julia ZELLWEGER      |
| RENEE       | BALL         | renee BALL           |
| ROCK        | DUKAKIS      | rock DUKAKIS         |
| CUBA        | BIRCH        | cuba BIRCH           |
| AUDREY      | BAILEY       | audrey BAILEY        |
| GREGORY     | GOODING      | gregory GOODING      |
| JOHN        | SUVARI       | john SUVARI          |
| BURT        | TEMPLE       | burt TEMPLE          |
| MERYL       | ALLEN        | meryl ALLEN          |
| JAYNE       | SILVERSTONE  | jayne SILVERSTONE    |
| BELA        | WALKEN       | bela WALKEN          |
| REESE       | WEST         | reese WEST           |
| MARY        | KEITEL       | mary KEITEL          |
| JULIA       | FAWCETT      | julia FAWCETT        |
| THORA       | TEMPLE       | thora TEMPLE         |
+-------------+--------------+----------------------+
200 rows in set (0.00 sec)

mysql> select first_name, last_name, concat(concat(upper(left(first_name,1)),lower(substring(first_name,2))),' ' ,upper(last_name)) as Actor_name from actor;
+-------------+--------------+----------------------+
| first_name  | last_name    | Actor_name           |
+-------------+--------------+----------------------+
| PENELOPE    | GUINESS      | Penelope GUINESS     |
| NICK        | WAHLBERG     | Nick WAHLBERG        |
| ED          | CHASE        | Ed CHASE             |
| JENNIFER    | DAVIS        | Jennifer DAVIS       |
| JOHNNY      | LOLLOBRIGIDA | Johnny LOLLOBRIGIDA  |
| BETTE       | NICHOLSON    | Bette NICHOLSON      |
| GRACE       | MOSTEL       | Grace MOSTEL         |
| MATTHEW     | JOHANSSON    | Matthew JOHANSSON    |
| JOE         | SWANK        | Joe SWANK            |
| CHRISTIAN   | GABLE        | Christian GABLE      |
| ZERO        | CAGE         | Zero CAGE            |
| KARL        | BERRY        | Karl BERRY           |
| UMA         | WOOD         | Uma WOOD             |
| VIVIEN      | BERGEN       | Vivien BERGEN        |
| CUBA        | OLIVIER      | Cuba OLIVIER         |
| FRED        | COSTNER      | Fred COSTNER         |
| HELEN       | VOIGHT       | Helen VOIGHT         |
| DAN         | TORN         | Dan TORN             |
| BOB         | FAWCETT      | Bob FAWCETT          |
| LUCILLE     | TRACY        | Lucille TRACY        |
| KIRSTEN     | PALTROW      | Kirsten PALTROW      |
| ELVIS       | MARX         | Elvis MARX           |
| SANDRA      | KILMER       | Sandra KILMER        |
| CAMERON     | STREEP       | Cameron STREEP       |
| KEVIN       | BLOOM        | Kevin BLOOM          |
| RIP         | CRAWFORD     | Rip CRAWFORD         |
| JULIA       | MCQUEEN      | Julia MCQUEEN        |
| WOODY       | HOFFMAN      | Woody HOFFMAN        |
| ALEC        | WAYNE        | Alec WAYNE           |
| SANDRA      | PECK         | Sandra PECK          |
| SISSY       | SOBIESKI     | Sissy SOBIESKI       |
| TIM         | HACKMAN      | Tim HACKMAN          |
| MILLA       | PECK         | Milla PECK           |
| AUDREY      | OLIVIER      | Audrey OLIVIER       |
| JUDY        | DEAN         | Judy DEAN            |
| BURT        | DUKAKIS      | Burt DUKAKIS         |
| VAL         | BOLGER       | Val BOLGER           |
| TOM         | MCKELLEN     | Tom MCKELLEN         |
| GOLDIE      | BRODY        | Goldie BRODY         |
| JOHNNY      | CAGE         | Johnny CAGE          |
| JODIE       | DEGENERES    | Jodie DEGENERES      |
| TOM         | MIRANDA      | Tom MIRANDA          |
| KIRK        | JOVOVICH     | Kirk JOVOVICH        |
| NICK        | STALLONE     | Nick STALLONE        |
| REESE       | KILMER       | Reese KILMER         |
| PARKER      | GOLDBERG     | Parker GOLDBERG      |
| JULIA       | BARRYMORE    | Julia BARRYMORE      |
| FRANCES     | DAY-LEWIS    | Frances DAY-LEWIS    |
| ANNE        | CRONYN       | Anne CRONYN          |
| NATALIE     | HOPKINS      | Natalie HOPKINS      |
| GARY        | PHOENIX      | Gary PHOENIX         |
| CARMEN      | HUNT         | Carmen HUNT          |
| MENA        | TEMPLE       | Mena TEMPLE          |
| PENELOPE    | PINKETT      | Penelope PINKETT     |
| FAY         | KILMER       | Fay KILMER           |
| DAN         | HARRIS       | Dan HARRIS           |
| JUDE        | CRUISE       | Jude CRUISE          |
| CHRISTIAN   | AKROYD       | Christian AKROYD     |
| DUSTIN      | TAUTOU       | Dustin TAUTOU        |
| HENRY       | BERRY        | Henry BERRY          |
| CHRISTIAN   | NEESON       | Christian NEESON     |
| JAYNE       | NEESON       | Jayne NEESON         |
| CAMERON     | WRAY         | Cameron WRAY         |
| RAY         | JOHANSSON    | Ray JOHANSSON        |
| ANGELA      | HUDSON       | Angela HUDSON        |
| MARY        | TANDY        | Mary TANDY           |
| JESSICA     | BAILEY       | Jessica BAILEY       |
| RIP         | WINSLET      | Rip WINSLET          |
| KENNETH     | PALTROW      | Kenneth PALTROW      |
| MICHELLE    | MCCONAUGHEY  | Michelle MCCONAUGHEY |
| ADAM        | GRANT        | Adam GRANT           |
| SEAN        | WILLIAMS     | Sean WILLIAMS        |
| GARY        | PENN         | Gary PENN            |
| MILLA       | KEITEL       | Milla KEITEL         |
| BURT        | POSEY        | Burt POSEY           |
| ANGELINA    | ASTAIRE      | Angelina ASTAIRE     |
| CARY        | MCCONAUGHEY  | Cary MCCONAUGHEY     |
| GROUCHO     | SINATRA      | Groucho SINATRA      |
| MAE         | HOFFMAN      | Mae HOFFMAN          |
| RALPH       | CRUZ         | Ralph CRUZ           |
| SCARLETT    | DAMON        | Scarlett DAMON       |
| WOODY       | JOLIE        | Woody JOLIE          |
| BEN         | WILLIS       | Ben WILLIS           |
| JAMES       | PITT         | James PITT           |
| MINNIE      | ZELLWEGER    | Minnie ZELLWEGER     |
| GREG        | CHAPLIN      | Greg CHAPLIN         |
| SPENCER     | PECK         | Spencer PECK         |
| KENNETH     | PESCI        | Kenneth PESCI        |
| CHARLIZE    | DENCH        | Charlize DENCH       |
| SEAN        | GUINESS      | Sean GUINESS         |
| CHRISTOPHER | BERRY        | Christopher BERRY    |
| KIRSTEN     | AKROYD       | Kirsten AKROYD       |
| ELLEN       | PRESLEY      | Ellen PRESLEY        |
| KENNETH     | TORN         | Kenneth TORN         |
| DARYL       | WAHLBERG     | Daryl WAHLBERG       |
| GENE        | WILLIS       | Gene WILLIS          |
| MEG         | HAWKE        | Meg HAWKE            |
| CHRIS       | BRIDGES      | Chris BRIDGES        |
| JIM         | MOSTEL       | Jim MOSTEL           |
| SPENCER     | DEPP         | Spencer DEPP         |
| SUSAN       | DAVIS        | Susan DAVIS          |
| WALTER      | TORN         | Walter TORN          |
| MATTHEW     | LEIGH        | Matthew LEIGH        |
| PENELOPE    | CRONYN       | Penelope CRONYN      |
| SIDNEY      | CROWE        | Sidney CROWE         |
| GROUCHO     | DUNST        | Groucho DUNST        |
| GINA        | DEGENERES    | Gina DEGENERES       |
| WARREN      | NOLTE        | Warren NOLTE         |
| SYLVESTER   | DERN         | Sylvester DERN       |
| SUSAN       | DAVIS        | Susan DAVIS          |
| CAMERON     | ZELLWEGER    | Cameron ZELLWEGER    |
| RUSSELL     | BACALL       | Russell BACALL       |
| MORGAN      | HOPKINS      | Morgan HOPKINS       |
| MORGAN      | MCDORMAND    | Morgan MCDORMAND     |
| HARRISON    | BALE         | Harrison BALE        |
| DAN         | STREEP       | Dan STREEP           |
| RENEE       | TRACY        | Renee TRACY          |
| CUBA        | ALLEN        | Cuba ALLEN           |
| WARREN      | JACKMAN      | Warren JACKMAN       |
| PENELOPE    | MONROE       | Penelope MONROE      |
| LIZA        | BERGMAN      | Liza BERGMAN         |
| SALMA       | NOLTE        | Salma NOLTE          |
| JULIANNE    | DENCH        | Julianne DENCH       |
| SCARLETT    | BENING       | Scarlett BENING      |
| ALBERT      | NOLTE        | Albert NOLTE         |
| FRANCES     | TOMEI        | Frances TOMEI        |
| KEVIN       | GARLAND      | Kevin GARLAND        |
| CATE        | MCQUEEN      | Cate MCQUEEN         |
| DARYL       | CRAWFORD     | Daryl CRAWFORD       |
| GRETA       | KEITEL       | Greta KEITEL         |
| JANE        | JACKMAN      | Jane JACKMAN         |
| ADAM        | HOPPER       | Adam HOPPER          |
| RICHARD     | PENN         | Richard PENN         |
| GENE        | HOPKINS      | Gene HOPKINS         |
| RITA        | REYNOLDS     | Rita REYNOLDS        |
| ED          | MANSFIELD    | Ed MANSFIELD         |
| MORGAN      | WILLIAMS     | Morgan WILLIAMS      |
| LUCILLE     | DEE          | Lucille DEE          |
| EWAN        | GOODING      | Ewan GOODING         |
| WHOOPI      | HURT         | Whoopi HURT          |
| CATE        | HARRIS       | Cate HARRIS          |
| JADA        | RYDER        | Jada RYDER           |
| RIVER       | DEAN         | River DEAN           |
| ANGELA      | WITHERSPOON  | Angela WITHERSPOON   |
| KIM         | ALLEN        | Kim ALLEN            |
| ALBERT      | JOHANSSON    | Albert JOHANSSON     |
| FAY         | WINSLET      | Fay WINSLET          |
| EMILY       | DEE          | Emily DEE            |
| RUSSELL     | TEMPLE       | Russell TEMPLE       |
| JAYNE       | NOLTE        | Jayne NOLTE          |
| GEOFFREY    | HESTON       | Geoffrey HESTON      |
| BEN         | HARRIS       | Ben HARRIS           |
| MINNIE      | KILMER       | Minnie KILMER        |
| MERYL       | GIBSON       | Meryl GIBSON         |
| IAN         | TANDY        | Ian TANDY            |
| FAY         | WOOD         | Fay WOOD             |
| GRETA       | MALDEN       | Greta MALDEN         |
| VIVIEN      | BASINGER     | Vivien BASINGER      |
| LAURA       | BRODY        | Laura BRODY          |
| CHRIS       | DEPP         | Chris DEPP           |
| HARVEY      | HOPE         | Harvey HOPE          |
| OPRAH       | KILMER       | Oprah KILMER         |
| CHRISTOPHER | WEST         | Christopher WEST     |
| HUMPHREY    | WILLIS       | Humphrey WILLIS      |
| AL          | GARLAND      | Al GARLAND           |
| NICK        | DEGENERES    | Nick DEGENERES       |
| LAURENCE    | BULLOCK      | Laurence BULLOCK     |
| WILL        | WILSON       | Will WILSON          |
| KENNETH     | HOFFMAN      | Kenneth HOFFMAN      |
| MENA        | HOPPER       | Mena HOPPER          |
| OLYMPIA     | PFEIFFER     | Olympia PFEIFFER     |
| GROUCHO     | WILLIAMS     | Groucho WILLIAMS     |
| ALAN        | DREYFUSS     | Alan DREYFUSS        |
| MICHAEL     | BENING       | Michael BENING       |
| WILLIAM     | HACKMAN      | William HACKMAN      |
| JON         | CHASE        | Jon CHASE            |
| GENE        | MCKELLEN     | Gene MCKELLEN        |
| LISA        | MONROE       | Lisa MONROE          |
| ED          | GUINESS      | Ed GUINESS           |
| JEFF        | SILVERSTONE  | Jeff SILVERSTONE     |
| MATTHEW     | CARREY       | Matthew CARREY       |
| DEBBIE      | AKROYD       | Debbie AKROYD        |
| RUSSELL     | CLOSE        | Russell CLOSE        |
| HUMPHREY    | GARLAND      | Humphrey GARLAND     |
| MICHAEL     | BOLGER       | Michael BOLGER       |
| JULIA       | ZELLWEGER    | Julia ZELLWEGER      |
| RENEE       | BALL         | Renee BALL           |
| ROCK        | DUKAKIS      | Rock DUKAKIS         |
| CUBA        | BIRCH        | Cuba BIRCH           |
| AUDREY      | BAILEY       | Audrey BAILEY        |
| GREGORY     | GOODING      | Gregory GOODING      |
| JOHN        | SUVARI       | John SUVARI          |
| BURT        | TEMPLE       | Burt TEMPLE          |
| MERYL       | ALLEN        | Meryl ALLEN          |
| JAYNE       | SILVERSTONE  | Jayne SILVERSTONE    |
| BELA        | WALKEN       | Bela WALKEN          |
| REESE       | WEST         | Reese WEST           |
| MARY        | KEITEL       | Mary KEITEL          |
| JULIA       | FAWCETT      | Julia FAWCETT        |
| THORA       | TEMPLE       | Thora TEMPLE         |
+-------------+--------------+----------------------+
200 rows in set (0.00 sec)

mysql> select * from actor where first_name='JENNIFER';
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|        4 | JENNIFER   | DAVIS     | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
1 row in set (0.00 sec)

mysql> select * from actor where length(first_name)=3;
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|        9 | JOE        | SWANK     | 2006-02-15 04:34:33 |
|       13 | UMA        | WOOD      | 2006-02-15 04:34:33 |
|       18 | DAN        | TORN      | 2006-02-15 04:34:33 |
|       19 | BOB        | FAWCETT   | 2006-02-15 04:34:33 |
|       26 | RIP        | CRAWFORD  | 2006-02-15 04:34:33 |
|       32 | TIM        | HACKMAN   | 2006-02-15 04:34:33 |
|       37 | VAL        | BOLGER    | 2006-02-15 04:34:33 |
|       38 | TOM        | MCKELLEN  | 2006-02-15 04:34:33 |
|       42 | TOM        | MIRANDA   | 2006-02-15 04:34:33 |
|       55 | FAY        | KILMER    | 2006-02-15 04:34:33 |
|       56 | DAN        | HARRIS    | 2006-02-15 04:34:33 |
|       64 | RAY        | JOHANSSON | 2006-02-15 04:34:33 |
|       68 | RIP        | WINSLET   | 2006-02-15 04:34:33 |
|       79 | MAE        | HOFFMAN   | 2006-02-15 04:34:33 |
|       83 | BEN        | WILLIS    | 2006-02-15 04:34:33 |
|       97 | MEG        | HAWKE     | 2006-02-15 04:34:33 |
|       99 | JIM        | MOSTEL    | 2006-02-15 04:34:33 |
|      116 | DAN        | STREEP    | 2006-02-15 04:34:33 |
|      145 | KIM        | ALLEN     | 2006-02-15 04:34:33 |
|      147 | FAY        | WINSLET   | 2006-02-15 04:34:33 |
|      152 | BEN        | HARRIS    | 2006-02-15 04:34:33 |
|      155 | IAN        | TANDY     | 2006-02-15 04:34:33 |
|      156 | FAY        | WOOD      | 2006-02-15 04:34:33 |
|      176 | JON        | CHASE     | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
24 rows in set (0.00 sec)

mysql> select *, length(first_name) as nb_char_first_name,length(last_name) as nb_char_last_name from actor order by nb_char_first_name;
+----------+-------------+--------------+---------------------+--------------------+-------------------+
| actor_id | first_name  | last_name    | last_update         | nb_char_first_name | nb_char_last_name |
+----------+-------------+--------------+---------------------+--------------------+-------------------+
|        3 | ED          | CHASE        | 2006-02-15 04:34:33 |                  2 |                 5 |
|      136 | ED          | MANSFIELD    | 2006-02-15 04:34:33 |                  2 |                 9 |
|      165 | AL          | GARLAND      | 2006-02-15 04:34:33 |                  2 |                 7 |
|      179 | ED          | GUINESS      | 2006-02-15 04:34:33 |                  2 |                 7 |
|        9 | JOE         | SWANK        | 2006-02-15 04:34:33 |                  3 |                 5 |
|       13 | UMA         | WOOD         | 2006-02-15 04:34:33 |                  3 |                 4 |
|       18 | DAN         | TORN         | 2006-02-15 04:34:33 |                  3 |                 4 |
|       19 | BOB         | FAWCETT      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       26 | RIP         | CRAWFORD     | 2006-02-15 04:34:33 |                  3 |                 8 |
|       32 | TIM         | HACKMAN      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       37 | VAL         | BOLGER       | 2006-02-15 04:34:33 |                  3 |                 6 |
|       38 | TOM         | MCKELLEN     | 2006-02-15 04:34:33 |                  3 |                 8 |
|       42 | TOM         | MIRANDA      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       55 | FAY         | KILMER       | 2006-02-15 04:34:33 |                  3 |                 6 |
|       56 | DAN         | HARRIS       | 2006-02-15 04:34:33 |                  3 |                 6 |
|       64 | RAY         | JOHANSSON    | 2006-02-15 04:34:33 |                  3 |                 9 |
|       68 | RIP         | WINSLET      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       79 | MAE         | HOFFMAN      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       83 | BEN         | WILLIS       | 2006-02-15 04:34:33 |                  3 |                 6 |
|       97 | MEG         | HAWKE        | 2006-02-15 04:34:33 |                  3 |                 5 |
|       99 | JIM         | MOSTEL       | 2006-02-15 04:34:33 |                  3 |                 6 |
|      116 | DAN         | STREEP       | 2006-02-15 04:34:33 |                  3 |                 6 |
|      145 | KIM         | ALLEN        | 2006-02-15 04:34:33 |                  3 |                 5 |
|      147 | FAY         | WINSLET      | 2006-02-15 04:34:33 |                  3 |                 7 |
|      152 | BEN         | HARRIS       | 2006-02-15 04:34:33 |                  3 |                 6 |
|      155 | IAN         | TANDY        | 2006-02-15 04:34:33 |                  3 |                 5 |
|      156 | FAY         | WOOD         | 2006-02-15 04:34:33 |                  3 |                 4 |
|      176 | JON         | CHASE        | 2006-02-15 04:34:33 |                  3 |                 5 |
|        2 | NICK        | WAHLBERG     | 2006-02-15 04:34:33 |                  4 |                 8 |
|       11 | ZERO        | CAGE         | 2006-02-15 04:34:33 |                  4 |                 4 |
|       12 | KARL        | BERRY        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       15 | CUBA        | OLIVIER      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       16 | FRED        | COSTNER      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       29 | ALEC        | WAYNE        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       35 | JUDY        | DEAN         | 2006-02-15 04:34:33 |                  4 |                 4 |
|       36 | BURT        | DUKAKIS      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       43 | KIRK        | JOVOVICH     | 2006-02-15 04:34:33 |                  4 |                 8 |
|       44 | NICK        | STALLONE     | 2006-02-15 04:34:33 |                  4 |                 8 |
|       49 | ANNE        | CRONYN       | 2006-02-15 04:34:33 |                  4 |                 6 |
|       51 | GARY        | PHOENIX      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       53 | MENA        | TEMPLE       | 2006-02-15 04:34:33 |                  4 |                 6 |
|       57 | JUDE        | CRUISE       | 2006-02-15 04:34:33 |                  4 |                 6 |
|       66 | MARY        | TANDY        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       71 | ADAM        | GRANT        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       72 | SEAN        | WILLIAMS     | 2006-02-15 04:34:33 |                  4 |                 8 |
|       73 | GARY        | PENN         | 2006-02-15 04:34:33 |                  4 |                 4 |
|       75 | BURT        | POSEY        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       77 | CARY        | MCCONAUGHEY  | 2006-02-15 04:34:33 |                  4 |                11 |
|       86 | GREG        | CHAPLIN      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       90 | SEAN        | GUINESS      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       96 | GENE        | WILLIS       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      107 | GINA        | DEGENERES    | 2006-02-15 04:34:33 |                  4 |                 9 |
|      118 | CUBA        | ALLEN        | 2006-02-15 04:34:33 |                  4 |                 5 |
|      121 | LIZA        | BERGMAN      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      128 | CATE        | MCQUEEN      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      131 | JANE        | JACKMAN      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      132 | ADAM        | HOPPER       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      134 | GENE        | HOPKINS      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      135 | RITA        | REYNOLDS     | 2006-02-15 04:34:33 |                  4 |                 8 |
|      139 | EWAN        | GOODING      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      141 | CATE        | HARRIS       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      142 | JADA        | RYDER        | 2006-02-15 04:34:33 |                  4 |                 5 |
|      166 | NICK        | DEGENERES    | 2006-02-15 04:34:33 |                  4 |                 9 |
|      168 | WILL        | WILSON       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      170 | MENA        | HOPPER       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      173 | ALAN        | DREYFUSS     | 2006-02-15 04:34:33 |                  4 |                 8 |
|      177 | GENE        | MCKELLEN     | 2006-02-15 04:34:33 |                  4 |                 8 |
|      178 | LISA        | MONROE       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      180 | JEFF        | SILVERSTONE  | 2006-02-15 04:34:33 |                  4 |                11 |
|      188 | ROCK        | DUKAKIS      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      189 | CUBA        | BIRCH        | 2006-02-15 04:34:33 |                  4 |                 5 |
|      192 | JOHN        | SUVARI       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      193 | BURT        | TEMPLE       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      196 | BELA        | WALKEN       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      198 | MARY        | KEITEL       | 2006-02-15 04:34:33 |                  4 |                 6 |
|        6 | BETTE       | NICHOLSON    | 2006-02-15 04:34:33 |                  5 |                 9 |
|        7 | GRACE       | MOSTEL       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       17 | HELEN       | VOIGHT       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       22 | ELVIS       | MARX         | 2006-02-15 04:34:33 |                  5 |                 4 |
|       25 | KEVIN       | BLOOM        | 2006-02-15 04:34:33 |                  5 |                 5 |
|       27 | JULIA       | MCQUEEN      | 2006-02-15 04:34:33 |                  5 |                 7 |
|       28 | WOODY       | HOFFMAN      | 2006-02-15 04:34:33 |                  5 |                 7 |
|       31 | SISSY       | SOBIESKI     | 2006-02-15 04:34:33 |                  5 |                 8 |
|       33 | MILLA       | PECK         | 2006-02-15 04:34:33 |                  5 |                 4 |
|       41 | JODIE       | DEGENERES    | 2006-02-15 04:34:33 |                  5 |                 9 |
|       45 | REESE       | KILMER       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       47 | JULIA       | BARRYMORE    | 2006-02-15 04:34:33 |                  5 |                 9 |
|       60 | HENRY       | BERRY        | 2006-02-15 04:34:33 |                  5 |                 5 |
|       62 | JAYNE       | NEESON       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       74 | MILLA       | KEITEL       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       80 | RALPH       | CRUZ         | 2006-02-15 04:34:33 |                  5 |                 4 |
|       82 | WOODY       | JOLIE        | 2006-02-15 04:34:33 |                  5 |                 5 |
|       84 | JAMES       | PITT         | 2006-02-15 04:34:33 |                  5 |                 4 |
|       93 | ELLEN       | PRESLEY      | 2006-02-15 04:34:33 |                  5 |                 7 |
|       95 | DARYL       | WAHLBERG     | 2006-02-15 04:34:33 |                  5 |                 8 |
|       98 | CHRIS       | BRIDGES      | 2006-02-15 04:34:33 |                  5 |                 7 |
|      101 | SUSAN       | DAVIS        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      110 | SUSAN       | DAVIS        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      117 | RENEE       | TRACY        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      122 | SALMA       | NOLTE        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      127 | KEVIN       | GARLAND      | 2006-02-15 04:34:33 |                  5 |                 7 |
|      129 | DARYL       | CRAWFORD     | 2006-02-15 04:34:33 |                  5 |                 8 |
|      130 | GRETA       | KEITEL       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      143 | RIVER       | DEAN         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      148 | EMILY       | DEE          | 2006-02-15 04:34:33 |                  5 |                 3 |
|      150 | JAYNE       | NOLTE        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      154 | MERYL       | GIBSON       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      157 | GRETA       | MALDEN       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      159 | LAURA       | BRODY        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      160 | CHRIS       | DEPP         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      162 | OPRAH       | KILMER       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      186 | JULIA       | ZELLWEGER    | 2006-02-15 04:34:33 |                  5 |                 9 |
|      187 | RENEE       | BALL         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      194 | MERYL       | ALLEN        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      195 | JAYNE       | SILVERSTONE  | 2006-02-15 04:34:33 |                  5 |                11 |
|      197 | REESE       | WEST         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      199 | JULIA       | FAWCETT      | 2006-02-15 04:34:33 |                  5 |                 7 |
|      200 | THORA       | TEMPLE       | 2006-02-15 04:34:33 |                  5 |                 6 |
|        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |                  6 |                12 |
|       14 | VIVIEN      | BERGEN       | 2006-02-15 04:34:33 |                  6 |                 6 |
|       23 | SANDRA      | KILMER       | 2006-02-15 04:34:33 |                  6 |                 6 |
|       30 | SANDRA      | PECK         | 2006-02-15 04:34:33 |                  6 |                 4 |
|       34 | AUDREY      | OLIVIER      | 2006-02-15 04:34:33 |                  6 |                 7 |
|       39 | GOLDIE      | BRODY        | 2006-02-15 04:34:33 |                  6 |                 5 |
|       40 | JOHNNY      | CAGE         | 2006-02-15 04:34:33 |                  6 |                 4 |
|       46 | PARKER      | GOLDBERG     | 2006-02-15 04:34:33 |                  6 |                 8 |
|       52 | CARMEN      | HUNT         | 2006-02-15 04:34:33 |                  6 |                 4 |
|       59 | DUSTIN      | TAUTOU       | 2006-02-15 04:34:33 |                  6 |                 6 |
|       65 | ANGELA      | HUDSON       | 2006-02-15 04:34:33 |                  6 |                 6 |
|       85 | MINNIE      | ZELLWEGER    | 2006-02-15 04:34:33 |                  6 |                 9 |
|      102 | WALTER      | TORN         | 2006-02-15 04:34:33 |                  6 |                 4 |
|      105 | SIDNEY      | CROWE        | 2006-02-15 04:34:33 |                  6 |                 5 |
|      108 | WARREN      | NOLTE        | 2006-02-15 04:34:33 |                  6 |                 5 |
|      113 | MORGAN      | HOPKINS      | 2006-02-15 04:34:33 |                  6 |                 7 |
|      114 | MORGAN      | MCDORMAND    | 2006-02-15 04:34:33 |                  6 |                 9 |
|      119 | WARREN      | JACKMAN      | 2006-02-15 04:34:33 |                  6 |                 7 |
|      125 | ALBERT      | NOLTE        | 2006-02-15 04:34:33 |                  6 |                 5 |
|      137 | MORGAN      | WILLIAMS     | 2006-02-15 04:34:33 |                  6 |                 8 |
|      140 | WHOOPI      | HURT         | 2006-02-15 04:34:33 |                  6 |                 4 |
|      144 | ANGELA      | WITHERSPOON  | 2006-02-15 04:34:33 |                  6 |                11 |
|      146 | ALBERT      | JOHANSSON    | 2006-02-15 04:34:33 |                  6 |                 9 |
|      153 | MINNIE      | KILMER       | 2006-02-15 04:34:33 |                  6 |                 6 |
|      158 | VIVIEN      | BASINGER     | 2006-02-15 04:34:33 |                  6 |                 8 |
|      161 | HARVEY      | HOPE         | 2006-02-15 04:34:33 |                  6 |                 4 |
|      182 | DEBBIE      | AKROYD       | 2006-02-15 04:34:33 |                  6 |                 6 |
|      190 | AUDREY      | BAILEY       | 2006-02-15 04:34:33 |                  6 |                 6 |
|        8 | MATTHEW     | JOHANSSON    | 2006-02-15 04:34:33 |                  7 |                 9 |
|       20 | LUCILLE     | TRACY        | 2006-02-15 04:34:33 |                  7 |                 5 |
|       21 | KIRSTEN     | PALTROW      | 2006-02-15 04:34:33 |                  7 |                 7 |
|       24 | CAMERON     | STREEP       | 2006-02-15 04:34:33 |                  7 |                 6 |
|       48 | FRANCES     | DAY-LEWIS    | 2006-02-15 04:34:33 |                  7 |                 9 |
|       50 | NATALIE     | HOPKINS      | 2006-02-15 04:34:33 |                  7 |                 7 |
|       63 | CAMERON     | WRAY         | 2006-02-15 04:34:33 |                  7 |                 4 |
|       67 | JESSICA     | BAILEY       | 2006-02-15 04:34:33 |                  7 |                 6 |
|       69 | KENNETH     | PALTROW      | 2006-02-15 04:34:33 |                  7 |                 7 |
|       78 | GROUCHO     | SINATRA      | 2006-02-15 04:34:33 |                  7 |                 7 |
|       87 | SPENCER     | PECK         | 2006-02-15 04:34:33 |                  7 |                 4 |
|       88 | KENNETH     | PESCI        | 2006-02-15 04:34:33 |                  7 |                 5 |
|       92 | KIRSTEN     | AKROYD       | 2006-02-15 04:34:33 |                  7 |                 6 |
|       94 | KENNETH     | TORN         | 2006-02-15 04:34:33 |                  7 |                 4 |
|      100 | SPENCER     | DEPP         | 2006-02-15 04:34:33 |                  7 |                 4 |
|      103 | MATTHEW     | LEIGH        | 2006-02-15 04:34:33 |                  7 |                 5 |
|      106 | GROUCHO     | DUNST        | 2006-02-15 04:34:33 |                  7 |                 5 |
|      111 | CAMERON     | ZELLWEGER    | 2006-02-15 04:34:33 |                  7 |                 9 |
|      112 | RUSSELL     | BACALL       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      126 | FRANCES     | TOMEI        | 2006-02-15 04:34:33 |                  7 |                 5 |
|      133 | RICHARD     | PENN         | 2006-02-15 04:34:33 |                  7 |                 4 |
|      138 | LUCILLE     | DEE          | 2006-02-15 04:34:33 |                  7 |                 3 |
|      149 | RUSSELL     | TEMPLE       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      169 | KENNETH     | HOFFMAN      | 2006-02-15 04:34:33 |                  7 |                 7 |
|      171 | OLYMPIA     | PFEIFFER     | 2006-02-15 04:34:33 |                  7 |                 8 |
|      172 | GROUCHO     | WILLIAMS     | 2006-02-15 04:34:33 |                  7 |                 8 |
|      174 | MICHAEL     | BENING       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      175 | WILLIAM     | HACKMAN      | 2006-02-15 04:34:33 |                  7 |                 7 |
|      181 | MATTHEW     | CARREY       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      183 | RUSSELL     | CLOSE        | 2006-02-15 04:34:33 |                  7 |                 5 |
|      185 | MICHAEL     | BOLGER       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      191 | GREGORY     | GOODING      | 2006-02-15 04:34:33 |                  7 |                 7 |
|        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |                  8 |                 7 |
|        4 | JENNIFER    | DAVIS        | 2006-02-15 04:34:33 |                  8 |                 5 |
|       54 | PENELOPE    | PINKETT      | 2006-02-15 04:34:33 |                  8 |                 7 |
|       70 | MICHELLE    | MCCONAUGHEY  | 2006-02-15 04:34:33 |                  8 |                11 |
|       76 | ANGELINA    | ASTAIRE      | 2006-02-15 04:34:33 |                  8 |                 7 |
|       81 | SCARLETT    | DAMON        | 2006-02-15 04:34:33 |                  8 |                 5 |
|       89 | CHARLIZE    | DENCH        | 2006-02-15 04:34:33 |                  8 |                 5 |
|      104 | PENELOPE    | CRONYN       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      115 | HARRISON    | BALE         | 2006-02-15 04:34:33 |                  8 |                 4 |
|      120 | PENELOPE    | MONROE       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      123 | JULIANNE    | DENCH        | 2006-02-15 04:34:33 |                  8 |                 5 |
|      124 | SCARLETT    | BENING       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      151 | GEOFFREY    | HESTON       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      164 | HUMPHREY    | WILLIS       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      167 | LAURENCE    | BULLOCK      | 2006-02-15 04:34:33 |                  8 |                 7 |
|      184 | HUMPHREY    | GARLAND      | 2006-02-15 04:34:33 |                  8 |                 7 |
|       10 | CHRISTIAN   | GABLE        | 2006-02-15 04:34:33 |                  9 |                 5 |
|       58 | CHRISTIAN   | AKROYD       | 2006-02-15 04:34:33 |                  9 |                 6 |
|       61 | CHRISTIAN   | NEESON       | 2006-02-15 04:34:33 |                  9 |                 6 |
|      109 | SYLVESTER   | DERN         | 2006-02-15 04:34:33 |                  9 |                 4 |
|       91 | CHRISTOPHER | BERRY        | 2006-02-15 04:34:33 |                 11 |                 5 |
|      163 | CHRISTOPHER | WEST         | 2006-02-15 04:34:33 |                 11 |                 4 |
+----------+-------------+--------------+---------------------+--------------------+-------------------+
200 rows in set (0.00 sec)

mysql> select *, length(first_name) as nb_char_first_name,length(last_name) as nb_char_last_name from actor order by nb_char_first_name asc,nb_char_last_name desc;
+----------+-------------+--------------+---------------------+--------------------+-------------------+
| actor_id | first_name  | last_name    | last_update         | nb_char_first_name | nb_char_last_name |
+----------+-------------+--------------+---------------------+--------------------+-------------------+
|      136 | ED          | MANSFIELD    | 2006-02-15 04:34:33 |                  2 |                 9 |
|      165 | AL          | GARLAND      | 2006-02-15 04:34:33 |                  2 |                 7 |
|      179 | ED          | GUINESS      | 2006-02-15 04:34:33 |                  2 |                 7 |
|        3 | ED          | CHASE        | 2006-02-15 04:34:33 |                  2 |                 5 |
|       64 | RAY         | JOHANSSON    | 2006-02-15 04:34:33 |                  3 |                 9 |
|       26 | RIP         | CRAWFORD     | 2006-02-15 04:34:33 |                  3 |                 8 |
|       38 | TOM         | MCKELLEN     | 2006-02-15 04:34:33 |                  3 |                 8 |
|       19 | BOB         | FAWCETT      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       32 | TIM         | HACKMAN      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       42 | TOM         | MIRANDA      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       68 | RIP         | WINSLET      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       79 | MAE         | HOFFMAN      | 2006-02-15 04:34:33 |                  3 |                 7 |
|      147 | FAY         | WINSLET      | 2006-02-15 04:34:33 |                  3 |                 7 |
|       37 | VAL         | BOLGER       | 2006-02-15 04:34:33 |                  3 |                 6 |
|       55 | FAY         | KILMER       | 2006-02-15 04:34:33 |                  3 |                 6 |
|       56 | DAN         | HARRIS       | 2006-02-15 04:34:33 |                  3 |                 6 |
|       83 | BEN         | WILLIS       | 2006-02-15 04:34:33 |                  3 |                 6 |
|       99 | JIM         | MOSTEL       | 2006-02-15 04:34:33 |                  3 |                 6 |
|      116 | DAN         | STREEP       | 2006-02-15 04:34:33 |                  3 |                 6 |
|      152 | BEN         | HARRIS       | 2006-02-15 04:34:33 |                  3 |                 6 |
|        9 | JOE         | SWANK        | 2006-02-15 04:34:33 |                  3 |                 5 |
|       97 | MEG         | HAWKE        | 2006-02-15 04:34:33 |                  3 |                 5 |
|      145 | KIM         | ALLEN        | 2006-02-15 04:34:33 |                  3 |                 5 |
|      155 | IAN         | TANDY        | 2006-02-15 04:34:33 |                  3 |                 5 |
|      176 | JON         | CHASE        | 2006-02-15 04:34:33 |                  3 |                 5 |
|       13 | UMA         | WOOD         | 2006-02-15 04:34:33 |                  3 |                 4 |
|       18 | DAN         | TORN         | 2006-02-15 04:34:33 |                  3 |                 4 |
|      156 | FAY         | WOOD         | 2006-02-15 04:34:33 |                  3 |                 4 |
|       77 | CARY        | MCCONAUGHEY  | 2006-02-15 04:34:33 |                  4 |                11 |
|      180 | JEFF        | SILVERSTONE  | 2006-02-15 04:34:33 |                  4 |                11 |
|      107 | GINA        | DEGENERES    | 2006-02-15 04:34:33 |                  4 |                 9 |
|      166 | NICK        | DEGENERES    | 2006-02-15 04:34:33 |                  4 |                 9 |
|        2 | NICK        | WAHLBERG     | 2006-02-15 04:34:33 |                  4 |                 8 |
|       43 | KIRK        | JOVOVICH     | 2006-02-15 04:34:33 |                  4 |                 8 |
|       44 | NICK        | STALLONE     | 2006-02-15 04:34:33 |                  4 |                 8 |
|       72 | SEAN        | WILLIAMS     | 2006-02-15 04:34:33 |                  4 |                 8 |
|      135 | RITA        | REYNOLDS     | 2006-02-15 04:34:33 |                  4 |                 8 |
|      173 | ALAN        | DREYFUSS     | 2006-02-15 04:34:33 |                  4 |                 8 |
|      177 | GENE        | MCKELLEN     | 2006-02-15 04:34:33 |                  4 |                 8 |
|       15 | CUBA        | OLIVIER      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       16 | FRED        | COSTNER      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       36 | BURT        | DUKAKIS      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       51 | GARY        | PHOENIX      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       86 | GREG        | CHAPLIN      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       90 | SEAN        | GUINESS      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      121 | LIZA        | BERGMAN      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      128 | CATE        | MCQUEEN      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      131 | JANE        | JACKMAN      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      134 | GENE        | HOPKINS      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      139 | EWAN        | GOODING      | 2006-02-15 04:34:33 |                  4 |                 7 |
|      188 | ROCK        | DUKAKIS      | 2006-02-15 04:34:33 |                  4 |                 7 |
|       49 | ANNE        | CRONYN       | 2006-02-15 04:34:33 |                  4 |                 6 |
|       53 | MENA        | TEMPLE       | 2006-02-15 04:34:33 |                  4 |                 6 |
|       57 | JUDE        | CRUISE       | 2006-02-15 04:34:33 |                  4 |                 6 |
|       96 | GENE        | WILLIS       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      132 | ADAM        | HOPPER       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      141 | CATE        | HARRIS       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      168 | WILL        | WILSON       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      170 | MENA        | HOPPER       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      178 | LISA        | MONROE       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      192 | JOHN        | SUVARI       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      193 | BURT        | TEMPLE       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      196 | BELA        | WALKEN       | 2006-02-15 04:34:33 |                  4 |                 6 |
|      198 | MARY        | KEITEL       | 2006-02-15 04:34:33 |                  4 |                 6 |
|       12 | KARL        | BERRY        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       29 | ALEC        | WAYNE        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       66 | MARY        | TANDY        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       71 | ADAM        | GRANT        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       75 | BURT        | POSEY        | 2006-02-15 04:34:33 |                  4 |                 5 |
|      118 | CUBA        | ALLEN        | 2006-02-15 04:34:33 |                  4 |                 5 |
|      142 | JADA        | RYDER        | 2006-02-15 04:34:33 |                  4 |                 5 |
|      189 | CUBA        | BIRCH        | 2006-02-15 04:34:33 |                  4 |                 5 |
|       11 | ZERO        | CAGE         | 2006-02-15 04:34:33 |                  4 |                 4 |
|       35 | JUDY        | DEAN         | 2006-02-15 04:34:33 |                  4 |                 4 |
|       73 | GARY        | PENN         | 2006-02-15 04:34:33 |                  4 |                 4 |
|      195 | JAYNE       | SILVERSTONE  | 2006-02-15 04:34:33 |                  5 |                11 |
|        6 | BETTE       | NICHOLSON    | 2006-02-15 04:34:33 |                  5 |                 9 |
|       41 | JODIE       | DEGENERES    | 2006-02-15 04:34:33 |                  5 |                 9 |
|       47 | JULIA       | BARRYMORE    | 2006-02-15 04:34:33 |                  5 |                 9 |
|      186 | JULIA       | ZELLWEGER    | 2006-02-15 04:34:33 |                  5 |                 9 |
|       31 | SISSY       | SOBIESKI     | 2006-02-15 04:34:33 |                  5 |                 8 |
|       95 | DARYL       | WAHLBERG     | 2006-02-15 04:34:33 |                  5 |                 8 |
|      129 | DARYL       | CRAWFORD     | 2006-02-15 04:34:33 |                  5 |                 8 |
|       27 | JULIA       | MCQUEEN      | 2006-02-15 04:34:33 |                  5 |                 7 |
|       28 | WOODY       | HOFFMAN      | 2006-02-15 04:34:33 |                  5 |                 7 |
|       93 | ELLEN       | PRESLEY      | 2006-02-15 04:34:33 |                  5 |                 7 |
|       98 | CHRIS       | BRIDGES      | 2006-02-15 04:34:33 |                  5 |                 7 |
|      127 | KEVIN       | GARLAND      | 2006-02-15 04:34:33 |                  5 |                 7 |
|      199 | JULIA       | FAWCETT      | 2006-02-15 04:34:33 |                  5 |                 7 |
|        7 | GRACE       | MOSTEL       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       17 | HELEN       | VOIGHT       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       45 | REESE       | KILMER       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       62 | JAYNE       | NEESON       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       74 | MILLA       | KEITEL       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      130 | GRETA       | KEITEL       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      154 | MERYL       | GIBSON       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      157 | GRETA       | MALDEN       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      162 | OPRAH       | KILMER       | 2006-02-15 04:34:33 |                  5 |                 6 |
|      200 | THORA       | TEMPLE       | 2006-02-15 04:34:33 |                  5 |                 6 |
|       25 | KEVIN       | BLOOM        | 2006-02-15 04:34:33 |                  5 |                 5 |
|       60 | HENRY       | BERRY        | 2006-02-15 04:34:33 |                  5 |                 5 |
|       82 | WOODY       | JOLIE        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      101 | SUSAN       | DAVIS        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      110 | SUSAN       | DAVIS        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      117 | RENEE       | TRACY        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      122 | SALMA       | NOLTE        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      150 | JAYNE       | NOLTE        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      159 | LAURA       | BRODY        | 2006-02-15 04:34:33 |                  5 |                 5 |
|      194 | MERYL       | ALLEN        | 2006-02-15 04:34:33 |                  5 |                 5 |
|       22 | ELVIS       | MARX         | 2006-02-15 04:34:33 |                  5 |                 4 |
|       33 | MILLA       | PECK         | 2006-02-15 04:34:33 |                  5 |                 4 |
|       80 | RALPH       | CRUZ         | 2006-02-15 04:34:33 |                  5 |                 4 |
|       84 | JAMES       | PITT         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      143 | RIVER       | DEAN         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      160 | CHRIS       | DEPP         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      187 | RENEE       | BALL         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      197 | REESE       | WEST         | 2006-02-15 04:34:33 |                  5 |                 4 |
|      148 | EMILY       | DEE          | 2006-02-15 04:34:33 |                  5 |                 3 |
|        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |                  6 |                12 |
|      144 | ANGELA      | WITHERSPOON  | 2006-02-15 04:34:33 |                  6 |                11 |
|       85 | MINNIE      | ZELLWEGER    | 2006-02-15 04:34:33 |                  6 |                 9 |
|      114 | MORGAN      | MCDORMAND    | 2006-02-15 04:34:33 |                  6 |                 9 |
|      146 | ALBERT      | JOHANSSON    | 2006-02-15 04:34:33 |                  6 |                 9 |
|       46 | PARKER      | GOLDBERG     | 2006-02-15 04:34:33 |                  6 |                 8 |
|      137 | MORGAN      | WILLIAMS     | 2006-02-15 04:34:33 |                  6 |                 8 |
|      158 | VIVIEN      | BASINGER     | 2006-02-15 04:34:33 |                  6 |                 8 |
|       34 | AUDREY      | OLIVIER      | 2006-02-15 04:34:33 |                  6 |                 7 |
|      113 | MORGAN      | HOPKINS      | 2006-02-15 04:34:33 |                  6 |                 7 |
|      119 | WARREN      | JACKMAN      | 2006-02-15 04:34:33 |                  6 |                 7 |
|       14 | VIVIEN      | BERGEN       | 2006-02-15 04:34:33 |                  6 |                 6 |
|       23 | SANDRA      | KILMER       | 2006-02-15 04:34:33 |                  6 |                 6 |
|       59 | DUSTIN      | TAUTOU       | 2006-02-15 04:34:33 |                  6 |                 6 |
|       65 | ANGELA      | HUDSON       | 2006-02-15 04:34:33 |                  6 |                 6 |
|      153 | MINNIE      | KILMER       | 2006-02-15 04:34:33 |                  6 |                 6 |
|      182 | DEBBIE      | AKROYD       | 2006-02-15 04:34:33 |                  6 |                 6 |
|      190 | AUDREY      | BAILEY       | 2006-02-15 04:34:33 |                  6 |                 6 |
|       39 | GOLDIE      | BRODY        | 2006-02-15 04:34:33 |                  6 |                 5 |
|      105 | SIDNEY      | CROWE        | 2006-02-15 04:34:33 |                  6 |                 5 |
|      108 | WARREN      | NOLTE        | 2006-02-15 04:34:33 |                  6 |                 5 |
|      125 | ALBERT      | NOLTE        | 2006-02-15 04:34:33 |                  6 |                 5 |
|       30 | SANDRA      | PECK         | 2006-02-15 04:34:33 |                  6 |                 4 |
|       40 | JOHNNY      | CAGE         | 2006-02-15 04:34:33 |                  6 |                 4 |
|       52 | CARMEN      | HUNT         | 2006-02-15 04:34:33 |                  6 |                 4 |
|      102 | WALTER      | TORN         | 2006-02-15 04:34:33 |                  6 |                 4 |
|      140 | WHOOPI      | HURT         | 2006-02-15 04:34:33 |                  6 |                 4 |
|      161 | HARVEY      | HOPE         | 2006-02-15 04:34:33 |                  6 |                 4 |
|        8 | MATTHEW     | JOHANSSON    | 2006-02-15 04:34:33 |                  7 |                 9 |
|       48 | FRANCES     | DAY-LEWIS    | 2006-02-15 04:34:33 |                  7 |                 9 |
|      111 | CAMERON     | ZELLWEGER    | 2006-02-15 04:34:33 |                  7 |                 9 |
|      171 | OLYMPIA     | PFEIFFER     | 2006-02-15 04:34:33 |                  7 |                 8 |
|      172 | GROUCHO     | WILLIAMS     | 2006-02-15 04:34:33 |                  7 |                 8 |
|       21 | KIRSTEN     | PALTROW      | 2006-02-15 04:34:33 |                  7 |                 7 |
|       50 | NATALIE     | HOPKINS      | 2006-02-15 04:34:33 |                  7 |                 7 |
|       69 | KENNETH     | PALTROW      | 2006-02-15 04:34:33 |                  7 |                 7 |
|       78 | GROUCHO     | SINATRA      | 2006-02-15 04:34:33 |                  7 |                 7 |
|      169 | KENNETH     | HOFFMAN      | 2006-02-15 04:34:33 |                  7 |                 7 |
|      175 | WILLIAM     | HACKMAN      | 2006-02-15 04:34:33 |                  7 |                 7 |
|      191 | GREGORY     | GOODING      | 2006-02-15 04:34:33 |                  7 |                 7 |
|       24 | CAMERON     | STREEP       | 2006-02-15 04:34:33 |                  7 |                 6 |
|       67 | JESSICA     | BAILEY       | 2006-02-15 04:34:33 |                  7 |                 6 |
|       92 | KIRSTEN     | AKROYD       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      112 | RUSSELL     | BACALL       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      149 | RUSSELL     | TEMPLE       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      174 | MICHAEL     | BENING       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      181 | MATTHEW     | CARREY       | 2006-02-15 04:34:33 |                  7 |                 6 |
|      185 | MICHAEL     | BOLGER       | 2006-02-15 04:34:33 |                  7 |                 6 |
|       20 | LUCILLE     | TRACY        | 2006-02-15 04:34:33 |                  7 |                 5 |
|       88 | KENNETH     | PESCI        | 2006-02-15 04:34:33 |                  7 |                 5 |
|      103 | MATTHEW     | LEIGH        | 2006-02-15 04:34:33 |                  7 |                 5 |
|      106 | GROUCHO     | DUNST        | 2006-02-15 04:34:33 |                  7 |                 5 |
|      126 | FRANCES     | TOMEI        | 2006-02-15 04:34:33 |                  7 |                 5 |
|      183 | RUSSELL     | CLOSE        | 2006-02-15 04:34:33 |                  7 |                 5 |
|       63 | CAMERON     | WRAY         | 2006-02-15 04:34:33 |                  7 |                 4 |
|       87 | SPENCER     | PECK         | 2006-02-15 04:34:33 |                  7 |                 4 |
|       94 | KENNETH     | TORN         | 2006-02-15 04:34:33 |                  7 |                 4 |
|      100 | SPENCER     | DEPP         | 2006-02-15 04:34:33 |                  7 |                 4 |
|      133 | RICHARD     | PENN         | 2006-02-15 04:34:33 |                  7 |                 4 |
|      138 | LUCILLE     | DEE          | 2006-02-15 04:34:33 |                  7 |                 3 |
|       70 | MICHELLE    | MCCONAUGHEY  | 2006-02-15 04:34:33 |                  8 |                11 |
|        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |                  8 |                 7 |
|       54 | PENELOPE    | PINKETT      | 2006-02-15 04:34:33 |                  8 |                 7 |
|       76 | ANGELINA    | ASTAIRE      | 2006-02-15 04:34:33 |                  8 |                 7 |
|      167 | LAURENCE    | BULLOCK      | 2006-02-15 04:34:33 |                  8 |                 7 |
|      184 | HUMPHREY    | GARLAND      | 2006-02-15 04:34:33 |                  8 |                 7 |
|      104 | PENELOPE    | CRONYN       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      120 | PENELOPE    | MONROE       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      124 | SCARLETT    | BENING       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      151 | GEOFFREY    | HESTON       | 2006-02-15 04:34:33 |                  8 |                 6 |
|      164 | HUMPHREY    | WILLIS       | 2006-02-15 04:34:33 |                  8 |                 6 |
|        4 | JENNIFER    | DAVIS        | 2006-02-15 04:34:33 |                  8 |                 5 |
|       81 | SCARLETT    | DAMON        | 2006-02-15 04:34:33 |                  8 |                 5 |
|       89 | CHARLIZE    | DENCH        | 2006-02-15 04:34:33 |                  8 |                 5 |
|      123 | JULIANNE    | DENCH        | 2006-02-15 04:34:33 |                  8 |                 5 |
|      115 | HARRISON    | BALE         | 2006-02-15 04:34:33 |                  8 |                 4 |
|       58 | CHRISTIAN   | AKROYD       | 2006-02-15 04:34:33 |                  9 |                 6 |
|       61 | CHRISTIAN   | NEESON       | 2006-02-15 04:34:33 |                  9 |                 6 |
|       10 | CHRISTIAN   | GABLE        | 2006-02-15 04:34:33 |                  9 |                 5 |
|      109 | SYLVESTER   | DERN         | 2006-02-15 04:34:33 |                  9 |                 4 |
|       91 | CHRISTOPHER | BERRY        | 2006-02-15 04:34:33 |                 11 |                 5 |
|      163 | CHRISTOPHER | WEST         | 2006-02-15 04:34:33 |                 11 |                 4 |
+----------+-------------+--------------+---------------------+--------------------+-------------------+
200 rows in set (0.00 sec)

mysql> select * from actor where last_name like '%SON%'
    -> ;
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|        6 | BETTE      | NICHOLSON | 2006-02-15 04:34:33 |
|        8 | MATTHEW    | JOHANSSON | 2006-02-15 04:34:33 |
|       61 | CHRISTIAN  | NEESON    | 2006-02-15 04:34:33 |
|       62 | JAYNE      | NEESON    | 2006-02-15 04:34:33 |
|       64 | RAY        | JOHANSSON | 2006-02-15 04:34:33 |
|       65 | ANGELA     | HUDSON    | 2006-02-15 04:34:33 |
|      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
|      154 | MERYL      | GIBSON    | 2006-02-15 04:34:33 |
|      168 | WILL       | WILSON    | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
9 rows in set (0.00 sec)

mysql> select * from actor where last_name like 'JOH%';
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|        8 | MATTHEW    | JOHANSSON | 2006-02-15 04:34:33 |
|       64 | RAY        | JOHANSSON | 2006-02-15 04:34:33 |
|      146 | ALBERT     | JOHANSSON | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
3 rows in set (0.00 sec)

mysql> select * from actor where last_name like '%LI%' order by last_name asc, first_name asc;
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|       86 | GREG       | CHAPLIN   | 2006-02-15 04:34:33 |
|       82 | WOODY      | JOLIE     | 2006-02-15 04:34:33 |
|       34 | AUDREY     | OLIVIER   | 2006-02-15 04:34:33 |
|       15 | CUBA       | OLIVIER   | 2006-02-15 04:34:33 |
|      172 | GROUCHO    | WILLIAMS  | 2006-02-15 04:34:33 |
|      137 | MORGAN     | WILLIAMS  | 2006-02-15 04:34:33 |
|       72 | SEAN       | WILLIAMS  | 2006-02-15 04:34:33 |
|       83 | BEN        | WILLIS    | 2006-02-15 04:34:33 |
|       96 | GENE       | WILLIS    | 2006-02-15 04:34:33 |
|      164 | HUMPHREY   | WILLIS    | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
10 rows in set (0.00 sec)

mysql> select * from country where country in ('China','Afghanistan','Bangladesh');
+------------+-------------+---------------------+
| country_id | country     | last_update         |
+------------+-------------+---------------------+
|          1 | Afghanistan | 2006-02-15 04:44:00 |
|         12 | Bangladesh  | 2006-02-15 04:44:00 |
|         23 | China       | 2006-02-15 04:44:00 |
+------------+-------------+---------------------+
3 rows in set (0.00 sec)

mysql> alter table actor
    -> add middle_name varchar(255);
Query OK, 0 rows affected (0.75 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from actor limit 10;
+----------+------------+--------------+---------------------+-------------+
| actor_id | first_name | last_name    | last_update         | middle_name |
+----------+------------+--------------+---------------------+-------------+
|        1 | PENELOPE   | GUINESS      | 2006-02-15 04:34:33 | NULL        |
|        2 | NICK       | WAHLBERG     | 2006-02-15 04:34:33 | NULL        |
|        3 | ED         | CHASE        | 2006-02-15 04:34:33 | NULL        |
|        4 | JENNIFER   | DAVIS        | 2006-02-15 04:34:33 | NULL        |
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 | NULL        |
|        6 | BETTE      | NICHOLSON    | 2006-02-15 04:34:33 | NULL        |
|        7 | GRACE      | MOSTEL       | 2006-02-15 04:34:33 | NULL        |
|        8 | MATTHEW    | JOHANSSON    | 2006-02-15 04:34:33 | NULL        |
|        9 | JOE        | SWANK        | 2006-02-15 04:34:33 | NULL        |
|       10 | CHRISTIAN  | GABLE        | 2006-02-15 04:34:33 | NULL        |
+----------+------------+--------------+---------------------+-------------+
10 rows in set (0.00 sec)

mysql> alter table actor modify column middle_name blob;
Query OK, 200 rows affected (0.95 sec)
Records: 200  Duplicates: 0  Warnings: 0

mysql> select * from actor limit 10;
+----------+------------+--------------+---------------------+-------------+
| actor_id | first_name | last_name    | last_update         | middle_name |
+----------+------------+--------------+---------------------+-------------+
|        1 | PENELOPE   | GUINESS      | 2006-02-15 04:34:33 | NULL        |
|        2 | NICK       | WAHLBERG     | 2006-02-15 04:34:33 | NULL        |
|        3 | ED         | CHASE        | 2006-02-15 04:34:33 | NULL        |
|        4 | JENNIFER   | DAVIS        | 2006-02-15 04:34:33 | NULL        |
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 | NULL        |
|        6 | BETTE      | NICHOLSON    | 2006-02-15 04:34:33 | NULL        |
|        7 | GRACE      | MOSTEL       | 2006-02-15 04:34:33 | NULL        |
|        8 | MATTHEW    | JOHANSSON    | 2006-02-15 04:34:33 | NULL        |
|        9 | JOE        | SWANK        | 2006-02-15 04:34:33 | NULL        |
|       10 | CHRISTIAN  | GABLE        | 2006-02-15 04:34:33 | NULL        |
+----------+------------+--------------+---------------------+-------------+
10 rows in set (0.00 sec)

mysql> alter table actor drop column middle_name;
Query OK, 0 rows affected (0.76 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from actor limit 10;
+----------+------------+--------------+---------------------+
| actor_id | first_name | last_name    | last_update         |
+----------+------------+--------------+---------------------+
|        1 | PENELOPE   | GUINESS      | 2006-02-15 04:34:33 |
|        2 | NICK       | WAHLBERG     | 2006-02-15 04:34:33 |
|        3 | ED         | CHASE        | 2006-02-15 04:34:33 |
|        4 | JENNIFER   | DAVIS        | 2006-02-15 04:34:33 |
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        6 | BETTE      | NICHOLSON    | 2006-02-15 04:34:33 |
|        7 | GRACE      | MOSTEL       | 2006-02-15 04:34:33 |
|        8 | MATTHEW    | JOHANSSON    | 2006-02-15 04:34:33 |
|        9 | JOE        | SWANK        | 2006-02-15 04:34:33 |
|       10 | CHRISTIAN  | GABLE        | 2006-02-15 04:34:33 |
+----------+------------+--------------+---------------------+
10 rows in set (0.00 sec)

mysql> select first_name, count(first_name) as cfn from actor group by first_name order by cfn desc;
+-------------+-----+
| first_name  | cfn |
+-------------+-----+
| PENELOPE    |   4 |
| JULIA       |   4 |
| KENNETH     |   4 |
| FAY         |   3 |
| JAYNE       |   3 |
| GENE        |   3 |
| MATTHEW     |   3 |
| CAMERON     |   3 |
| GROUCHO     |   3 |
| MORGAN      |   3 |
| ED          |   3 |
| CUBA        |   3 |
| BURT        |   3 |
| RUSSELL     |   3 |
| NICK        |   3 |
| CHRISTIAN   |   3 |
| DAN         |   3 |
| JOHNNY      |   2 |
| KIRSTEN     |   2 |
| KEVIN       |   2 |
| AUDREY      |   2 |
| TOM         |   2 |
| REESE       |   2 |
| SEAN        |   2 |
| SUSAN       |   2 |
| WARREN      |   2 |
| LUCILLE     |   2 |
| WOODY       |   2 |
| MILLA       |   2 |
| MENA        |   2 |
| MARY        |   2 |
| ADAM        |   2 |
| BEN         |   2 |
| SPENCER     |   2 |
| DARYL       |   2 |
| GRETA       |   2 |
| HUMPHREY    |   2 |
| SANDRA      |   2 |
| FRANCES     |   2 |
| ANGELA      |   2 |
| SCARLETT    |   2 |
| CHRIS       |   2 |
| CATE        |   2 |
| MERYL       |   2 |
| VIVIEN      |   2 |
| RIP         |   2 |
| GARY        |   2 |
| MINNIE      |   2 |
| CHRISTOPHER |   2 |
| RENEE       |   2 |
| ALBERT      |   2 |
| MICHAEL     |   2 |
| JOE         |   1 |
| UMA         |   1 |
| HELEN       |   1 |
| ALEC        |   1 |
| NATALIE     |   1 |
| JESSICA     |   1 |
| MAE         |   1 |
| JAMES       |   1 |
| CHARLIZE    |   1 |
| HARRISON    |   1 |
| JULIANNE    |   1 |
| JANE        |   1 |
| WHOOPI      |   1 |
| EMILY       |   1 |
| LAURA       |   1 |
| AL          |   1 |
| ALAN        |   1 |
| LISA        |   1 |
| GREGORY     |   1 |
| JENNIFER    |   1 |
| KARL        |   1 |
| FRED        |   1 |
| VAL         |   1 |
| KIRK        |   1 |
| ANNE        |   1 |
| HENRY       |   1 |
| JIM         |   1 |
| GINA        |   1 |
| SALMA       |   1 |
| EWAN        |   1 |
| KIM         |   1 |
| IAN         |   1 |
| OLYMPIA     |   1 |
| JON         |   1 |
| ROCK        |   1 |
| THORA       |   1 |
| GRACE       |   1 |
| ZERO        |   1 |
| BOB         |   1 |
| TIM         |   1 |
| JODIE       |   1 |
| CARMEN      |   1 |
| DUSTIN      |   1 |
| MICHELLE    |   1 |
| CARY        |   1 |
| GREG        |   1 |
| ELLEN       |   1 |
| SIDNEY      |   1 |
| LIZA        |   1 |
| RITA        |   1 |
| RIVER       |   1 |
| OPRAH       |   1 |
| WILL        |   1 |
| WILLIAM     |   1 |
| DEBBIE      |   1 |
| BELA        |   1 |
| BETTE       |   1 |
| ELVIS       |   1 |
| SISSY       |   1 |
| JUDY        |   1 |
| GOLDIE      |   1 |
| PARKER      |   1 |
| JUDE        |   1 |
| RAY         |   1 |
| ANGELINA    |   1 |
| RALPH       |   1 |
| MEG         |   1 |
| WALTER      |   1 |
| SYLVESTER   |   1 |
| RICHARD     |   1 |
| JADA        |   1 |
| GEOFFREY    |   1 |
| HARVEY      |   1 |
| LAURENCE    |   1 |
| JEFF        |   1 |
| JOHN        |   1 |
+-------------+-----+
128 rows in set (0.00 sec)

mysql> select first_name, count(first_name) as cfn from actor group by first_name having count(first_name)>=3 order by cfn desc;
+------------+-----+
| first_name | cfn |
+------------+-----+
| PENELOPE   |   4 |
| JULIA      |   4 |
| KENNETH    |   4 |
| CUBA       |   3 |
| CAMERON    |   3 |
| MORGAN     |   3 |
| CHRISTIAN  |   3 |
| RUSSELL    |   3 |
| GROUCHO    |   3 |
| DAN        |   3 |
| GENE       |   3 |
| MATTHEW    |   3 |
| FAY        |   3 |
| ED         |   3 |
| BURT       |   3 |
| JAYNE      |   3 |
| NICK       |   3 |
+------------+-----+
17 rows in set (0.00 sec)

