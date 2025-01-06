#import "template.typ" : *

#show: project.with(
  type: "Proyecto de Investigación",
  title: "Investigación, desarrollo y análisis de un sistema de información meteorológica automático",
  subtitle: "para obtener el título de Ingeniero en Aeronáutica",
  author: "Oswaldo Arias Estrada",
  adviser: "Arturo Hernández Hernández",
  university: [Instituto Politécnico Nacional],
  faculty: [Unidad Profesional Interdisciplinaria de Ingeniería \
  Campus Guanajuato],
  dateandplace: "Silao de la Victoria, Guanajuato. 1 julio 2024",
  works: "works.yml",

  textfont: "Atkinson Hyperlegible",
  codefont: "Roboto Mono",
  universitypng: "/images/IPN.png",
  facultypng: "/images/UPIIG.png",

  abstract: [
    The development of an automatic weather station is presented, which is capable of collecting and transmitting weather data to a server for further processing and visualization. The weather station is designed to be inexpensive and easy to build, using off-the-shelf components. 
    
    Analysis of the data collected by the weather station is performed to determine the quality of the data, as well as the accuracy of the weather station. The results show that the weather station is capable of collecting data with a high degree of accuracy, and that the data is suitable for use in aviation.
  ],

  abstracto: [
    Se presenta el desarrollo de una estación meteorológica automática, capaz de recolectar y transmitir datos meteorológicos a un servidor para su posterior procesamiento y visualización. La estación meteorológica está diseñada para ser económica y fácil de construir, utilizando componentes pre-diseñados.
    
    El análisis de los datos recolectados por la estación meteorológica se realiza para determinar la calidad de los datos, así como la precisión de la estación meteorológica. Los resultados muestran que la estación meteorológica es capaz de recolectar datos con un alto grado de precisión, y que los datos son adecuados para su uso en aviación.
    ],

  dedication: [
    A Mariana, mi novia quien agradezco por su confianza y compañía, ella es la que  me ha dado la fuerza para seguir persiguiendo mis sueños y seguir aumentando mis metas, siempre se puede ser mejor, y a su lado se que los dos lo seremos.
    \ \
    A mis padres, Silvia y José, quienes siempre me han alentado y apoyado a lo largo de mi trayectoria académica. Su fe inquebrantable en mí ha sido una fuente constante de motivación.
    \ \
    A mi hermana, Romina, a quien agradezco aguantarme tanto, me llena de orgullo ver sus logros y anticipar todo lo que alcanzará, de ingeniero a futura licenciada, le deseo lo mejor.
  ],

  acknowledgements: [
    Expreso mi más sincero agradecimiento a:
    \ \
    - A mi amiga, Mireya Arizbeth Mercado Delgado, por siempre creer en mí, por más deprecario que fuera el estado en el que me viera, al final si se pudo.
    \
    - A mi asesor de proyecto Arturo Hernández Hernández, por brindarme información, comentarios y apoyo invaluable durante la investigación y el desarrollo del proyecto.
    \
    - A mis profesores, por su guía, consejo y aliento a lo largo de mi trayectoria académica.
    \ 
    - A Martin Haug y Laurenz Mädje por el desarrollo de #link("https://typst.app/")[Typst], la herramienta que me ha permitido realizar la escritura de este proyecto de investigación.
    \ \
    Gracias.
  ],

  resume: [
    Las estaciones meteorológicas automáticas tienen como objetivo recopilar datos meteorológicos precisos y actualizados de múltiples ubicaciones utilizando sensores y componentes para la recopilación y transmisión de datos a una red de servidores para su posterior procesamiento, análisis y visualización.

    El Aviation Weather Center (AWC) es el organismo perteneciente al gobierno de los Estados Unidos de América, responsable de proporcionar información meteorológica a los usuarios de la aviación, incluidos pilotos, aeropuertos y equipos experimentales. Uno de los servicios más empleados del AWC es el servicio de reportes METAR (Meteorological Terminal Aviation Routine Weather Report), que es un formato estandarizado para informar las condiciones climáticas en los aeropuertos.

    La información METAR es recolectada a través de múltiples estaciones meterológicas que pueden ser manuales o automatizadas, las cuales se encuentran en aeródromo y se encargan de tomar observaciones meteorológicas, respecto a  la temperatura, punto de rocío, presión, precipitación, así como la dirección y velocidad del viento, entre otras más. La información que proveen estas estaciones es vital para las aerolíneas, pilotos y demás usuarios del espacio aéreo.

    El objetivo principal del proyecto es proporcionar datos meteorológicos fiables y precisos a una mayor cantidad de usuarios. Para lograrlo, el diseño de la estación meteorológica se realizará tomando en cuenta aspectos como la asequibilidad, confiabilidad, calidad, así como la fácilidad de instalación, administración y mantenimiento de la misma.

    A partir de los datos obtenidos por la estación meteorológica, se realizará un análisis de los mismos para determinar la calidad de los datos, así como la precisión de la estación. Se espera que los resultados obtenidos mediante la recolección y análisis de las observaciones nos permitan determinar las posibilidad del uso de alternativas más económicas para la observación meteorológica, así como encontrar un rango de público objetivo interezado en el uso de la tecnología desarrollada.
  ]
)

= Nomenclatura <nomenclatura>

== Almacenamiento de datos <nomenclatura_almacenamiento-de-datos>

- *Base de datos.* Conjunto estructurado de información que se almacena y se organiza en un sistema informático. En una base de datos, los datos están organizados en tablas y se pueden acceder, gestionar y actualizar mediante un software de gestión de bases de datos.

- *CSV.* Acrónimo de "valores separados por comas" (Comma-Separated Values, en inglés) y es un formato de archivo utilizado para almacenar datos tabulares. Los datos en un archivo CSV están separados por comas y cada fila representa un registro.

- *JSON.* Acrónimo de "Notación de Objetos JavaScript" (JavaScript Object Notation, en inglés) y es un formato de archivo utilizado para almacenar y transmitir datos. Se utiliza comúnmente en aplicaciones web y móviles para intercambiar datos entre diferentes sistemas.

- *Logs.* Archivos que registran los eventos y actividades que ocurren en un sistema informático. Los logs se utilizan para solucionar problemas y depurar errores en el sistema, así como para monitorizar el rendimiento y la seguridad del sistema.

- *MySQL.* Sistema de gestión de bases de datos relacional (RDBMS) de código abierto. Es uno de los sistemas de bases de datos más populares y se utiliza para gestionar bases de datos de diferentes tamaños y complejidades.

- *PocketBase.* Sistema de gestión de bases de datos simplificado y ejecutado desde un solo archivo, permite a los usuarios almacenar y gestionar datos de una forma fácil y sencilla.

- *RDBMS.* Acrónimo en inglés de "Sistema de Gestión de Bases de Datos Relacionales" (Relational Database Management System). Se refiere a un software diseñado para gestionar bases de datos relacionales, que son aquellas que almacenan y organizan la información en tablas compuestas por filas y columnas, permitiendo la relación y la conexión entre los datos almacenados en distintas tablas.

== Análisis de datos <nomenclatura_analisis-de-datos>

- *Excel.* Programa de hojas de cálculo desarrollado por Microsoft. Permite a los usuarios crear y gestionar hojas de cálculo con datos numéricos, realizar cálculos y análisis, crear gráficos y tablas dinámicas, y mucho más.

- *Pandas.* Biblioteca de Python que proporciona estructuras de datos y herramientas de análisis de datos de alto rendimiento. Se utiliza para manipular y analizar datos numéricos y tabulares.

== Autoridades <nomenclatura_autoridades>

=== Internacionales <nomenclatura_autoridades_internacionales>

- *ICAO.* La OACI (Organización de Aviación Civil Internacional, en español) es una agencia especializada de las Naciones Unidas que se dedica a la promoción de la seguridad y la eficiencia de la aviación civil internacional.

- *WMO.* Organización Meteorológica Mundial (World Meteorological Organization, en inglés). Se trata de una agencia especializada de las Naciones Unidas que se dedica a la promoción de la cooperación internacional en el ámbito de la meteorología, la climatología y la hidrología. La WMO se encarga de establecer normas y estándares internacionales para la recopilación, el análisis y la difusión de datos meteorológicos.

=== Estados Unidos de América <nomenclatura_autoridades_estados-unidos-de-america>

- *AWC.* Acrónimo en inglés de "Aviation Weather Center" (Centro de Clima para Aviación). Es una división de la Administración Nacional Oceánica y Atmosférica (NOAA) en los Estados Unidos que proporciona información meteorológica para la aviación. El AWC emite pronósticos y alertas meteorológicas para ayudar a los pilotos y operadores de aviación a tomar decisiones informadas sobre la seguridad de los vuelos.

- *FAA.* "Federal Aviation Administration" en inglés, es la agencia del gobierno de los Estados Unidos responsable de regular y supervisar la aviación civil en el país. La FAA establece normas y estándares de seguridad para la aviación civil, emite licencias y certificaciones para los pilotos y operadores de aviones, y supervisa el diseño y la construcción de aeronaves y aeropuertos.

- *ICAMS.* Acrónimo en inglés de "Interagency Council for Advancing Meteorological Services". Es un consejo interinstitucional que se encarga de coordinar y promover la mejora de los servicios meteorológicos en los Estados Unidos.

- *NOAA.* Acrónimo en inglés de la Administración Nacional Oceánica y Atmosférica (National Oceanic and Atmospheric Administration, en inglés). Es una agencia del gobierno de los Estados Unidos que se dedica a la investigación y el monitoreo de la atmósfera, los océanos y el clima. La NOAA es responsable de proporcionar información meteorológica y climática precisa y confiable para el público en general, la industria y el gobierno.

- *NWS.* Acrónimo en inglés del Servicio Meteorológico Nacional (National Weather Service, en inglés), una agencia de la NOAA en los Estados Unidos que se dedica a la recopilación, el análisis y la difusión de información meteorológica para el público en general, la industria y el gobierno. El NWS emite pronósticos y alertas meteorológicas para ayudar a las personas y las empresas a tomar decisiones informadas sobre la seguridad y la planificación de sus actividades.

=== México <nomenclatura_autoridades_mexico>

- *CAPMA.* Acrónimo del Centro de Análisis y Pronóstico Meteorológico Aeronáutico, una agencia gubernamental de México responsable de la recopilación, el análisis y la difusión de información meteorológica para la aviación civil en el país.

- *CONAGUA.* Acrónimo de la Comisión Nacional del Agua, una agencia gubernamental de México que se dedica a la gestión del agua en el país, incluyendo la planificación, la conservación y el aprovechamiento de los recursos hídricos, así como la regulación de la calidad del agua.

- *DGAC.* Acrónimo de la Dirección General de Aeronáutica Civil, una agencia gubernamental de México responsable de la regulación y supervisión de la aviación civil en el país. La DGAC establece normas y estándares de seguridad para la aviación civil, emite licencias y certificaciones para los pilotos y operadores de aeronaves, y supervisa el diseño y la construcción de aeropuertos y aeronaves.

- *SCT.* Acrónimo de la Secretaría de Comunicaciones y Transportes, una agencia gubernamental de México responsable de la regulación y supervisión de los sistemas de comunicaciones y transporte del país, incluyendo la aviación civil, el transporte terrestre y marítimo, y las telecomunicaciones.

- *SMN.* Acrónimo del Servicio Meteorológico Nacional, una agencia gubernamental de México responsable de la recopilación, el análisis y la difusión de información meteorológica en el país. El SMN emite pronósticos y alertas meteorológicas para ayudar a las personas y las empresas a tomar decisiones informadas sobre la seguridad y la planificación de sus actividades.

== Aviación <nomenclatura_aviacion>

- *METAR.* Acrónimo de "Meteorological Terminal Aviation Routine Weather Report" (Informe meteorológico rutinario de aviación de terminal). Es un formato estandarizado utilizado para transmitir información meteorológica a los pilotos de aviación. El informe METAR incluye información sobre la visibilidad, la altura de las nubes, la dirección y velocidad del viento, la temperatura, la humedad y la presión barométrica.

- *TAF.* Acrónimo de "Terminal Aerodrome Forecast" (Pronóstico de aeródromo de terminal). Es un informe meteorológico que proporciona información detallada sobre las condiciones meteorológicas esperadas en un aeropuerto en particular durante un período de tiempo específico. El TAF incluye información sobre la visibilidad, la altura de las nubes, la dirección y velocidad del viento, la temperatura, la humedad y la probabilidad de precipitación. El TAF se emite regularmente para ayudar a los pilotos y operadores de aviación a planificar y ejecutar sus operaciones de manera segura y eficiente.

== Desarrollo <nomenclatura_desarrollo>

- *Agile.* Enfoque de gestión de proyectos que se enfoca en la flexibilidad, la colaboración y la entrega iterativa e incremental. El enfoque Agile se centra en la adaptabilidad a los cambios y en el trabajo en equipo, con el objetivo de entregar productos de alta calidad de manera más eficiente.

- *Gantt.* Herramienta de planificación de proyectos que utiliza un gráfico de barras para visualizar el progreso de un proyecto a lo largo del tiempo. El gráfico de Gantt muestra las tareas del proyecto en una línea de tiempo, con barras que representan el tiempo dedicado a cada tarea y las dependencias entre ellas.

- *Kanban.* Sistema de gestión de proyectos que se centra en la visualización del flujo de trabajo y la eliminación de los cuellos de botella. El sistema Kanban utiliza tableros visuales para mostrar las tareas del proyecto, con tarjetas que representan cada tarea y que se mueven de una columna a otra a medida que se completan. El objetivo del sistema Kanban es mejorar la eficiencia y la calidad del trabajo mediante la identificación temprana de los problemas y la eliminación de los desperdicios.

=== Hardware <nomenclatura_desarrollo_hardware>

- *AS3935.* Circuito integrado de detección de tormentas eléctricas utilizado en estaciones meteorológicas y otros dispositivos electrónicos para detectar la presencia de tormentas eléctricas cercanas y emitir alertas.

- *BME280.* Sensor de presión, temperatura y humedad utilizado en estaciones meteorológicas y otros dispositivos electrónicos para medir y monitorear las condiciones ambientales.

- *Data Logger.* Dispositivo electrónico que registra y almacena datos de sensores y otros dispositivos de medición. Los Data Loggers se utilizan en una variedad de aplicaciones, incluyendo la monitorización ambiental, la medición de la calidad del aire, la medición del flujo de agua y la monitorización de la salud de las estructuras.

- *ESP32.* Microcontrolador de bajo costo y alto rendimiento utilizado en una amplia variedad de dispositivos electrónicos, incluyendo estaciones meteorológicas, robots y sistemas de automatización del hogar.

- *MicroMod.* Plataforma modular de electrónica que permite a los diseñadores crear prototipos de dispositivos electrónicos personalizados utilizando una variedad de módulos de hardware interconectables.

- *MicroMod Weather.* Módulo de hardware para la plataforma MicroMod que incluye sensores de temperatura, humedad, presión atmosférica y luz ambiental para la monitorización y el registro de datos meteorológicos.

- *microSD.* Formato de tarjeta de memoria utilizado en dispositivos electrónicos para almacenar y transferir datos.

- *RJ11.* Tipo de conector utilizado para conectar teléfonos, módems y otros dispositivos de comunicación a la red telefónica.

- *SparkFun.* Empresa que diseña y fabrica componentes y kits de electrónica para aficionados y profesionales de la electrónica.

- *VEML6075.* Sensor de radiación ultravioleta utilizado en dispositivos electrónicos para medir la exposición a la radiación UV y proporcionar alertas de exposición excesiva.

=== Software <nomenclatura_desarrollo_software>

- *Arduino.* Plataforma de hardware y software de código abierto utilizada para la creación de proyectos electrónicos interactivos y robótica.

- *Bash.* Intérprete de comandos y shell de Unix utilizado para la programación de scripts de línea de comandos y la automatización de tareas en sistemas operativos basados en Unix.

- *C.* Lenguaje de programación de bajo nivel utilizado para la creación de sistemas operativos, controladores de dispositivos y otras aplicaciones de software de alto rendimiento.

- *Embedido* (Embedded). Sistema informático integrado en un dispositivo electrónico o sistema más grande, utilizado para controlar el funcionamiento del dispositivo o sistema.

- *Git.* Sistema de control de versiones distribuido utilizado para el seguimiento de cambios en el código fuente de software y la colaboración en proyectos de software en equipo.

- *GitHub.* Plataforma de alojamiento de código fuente y colaboración en línea utilizada para el desarrollo de software.

- *GO.* Lenguaje de programación de código abierto utilizado para el desarrollo de aplicaciones de alta escalabilidad y rendimiento.

- *JavaScript.* Lenguaje de programación de alto nivel utilizado para la creación de aplicaciones web y móviles.

- *Microcontrolador.* Chip de computadora programable que integra un procesador, memoria y periféricos de entrada/salida en un solo chip, utilizado para controlar dispositivos electrónicos y sistemas embebidos.

- *NTP.* (Network Time Protocol) es un protocolo de Internet utilizado para la sincronización de relojes de computadora en una red.

- *Python.* Lenguaje de programación de alto nivel utilizado para la creación de aplicaciones web, científicas, educativas y de automatización de tareas.

- *Script.* Archivo de texto que contiene un conjunto de instrucciones o comandos de programación que se ejecutan automáticamente.

- *Shell.* Interfaz de línea de comandos utilizada para interactuar con el sistema operativo y ejecutar programas y scripts en sistemas Unix.

- *UTC.* (Tiempo Universal Coordinado) es un estándar de tiempo global utilizado como referencia para la sincronización de relojes en todo el mundo.

== Meteorología <nomenclatura_meteorologia>

- *Anemómetro.* Instrumento utilizado para medir la velocidad y dirección del viento.

- *ASOS.* (Automated Surface Observation System) Sistema Automático de Observación del Tiempo a nivel de Superficie, utilizado para la recopilación de datos meteorológicos en tiempo real.

- *AWOS.* (Automated Weather Observation System) Sistema Automático de Observación del Tiempo en General, utilizado para la recopilación de datos meteorológicos en tiempo real.

- *Barometro.* Instrumento utilizado para medir la presión atmosférica.

- *EMA's.* Estaciones Meteorológicas Automáticas, utilizadas para la recopilación y transmisión de datos meteorológicos.

- *Hygrotermómetro.* Instrumento utilizado para medir la temperatura y la humedad del aire.

- *Pluviómetro.* Instrumento utilizado para medir la cantidad de lluvia que cae en un determinado período de tiempo.

- *Presión atmosférica.* Presión ejercida por el aire en la superficie terrestre.

- *Presión barométrica.* Presión atmosférica medida con un barómetro.

- *Punto de rocío.* Temperatura a la que el vapor de agua comienza a condensarse en el aire.

- *Radiación solar.* Energía emitida por el sol en forma de ondas electromagnéticas.

- *Temperatura.* Medida de la intensidad del calor o frío en un cuerpo.

- *Termometro.* Instrumento utilizado para medir la temperatura.

- *UV Index.* Índice que indica la intensidad de los rayos UV del sol en un lugar determinado.

- *UVA.* Longitud de onda de la radiación UV que penetra más profundamente en la piel.

- *UVB.* Longitud de onda de la radiación UV responsable del enrojecimiento y quemaduras solares.

- *Veleta.* Instrumento utilizado para medir la dirección del viento.

== Servicios de datos meteorológicos <nomenclatura_servicios-de-datos-meteorologicos>

- *AccuWeather.* Servicio de pronóstico del tiempo y análisis meteorológicos.

- *Open-Meteo.* Plataforma de datos meteorológicos abiertos para el acceso y la investigación.

- *OpenWeatherMap.* Servicio en línea que proporciona pronósticos del tiempo y datos meteorológicos en tiempo real.

- *Weather Underground.* Servicio de pronósticos del tiempo y datos meteorológicos históricos con una red de estaciones meteorológicas en todo el mundo.

#pagebreak()

= Introducción <introduccion>

El proyecto se conforma de cuatro partes, la investigación, el prototipo, los resultados y el análisis. Mediante la separación de las partes, se puede tener un mejor control sobre el proyecto y se puede realizar un seguimiento de los avances.

La investigación se centrará en la recopilación de información relativa a los sistemas de recolección de datos meteorológicos, los sensores y los protocolos de comunicación utilizados en la industria. También se realizará una investigación sobre los protocolos de comunicación utilizados en la industria de la aviación para la transmisión de datos meteorológicos, así como de los sistemas automáticos de observación del tiempo (ASOS) y los sistemas automáticos de observación del tiempo en general (AWOS).

La comprensión del uso de APIs, Text Data Servers y demás protocolos de comunicación en la industria de la aviación, así como de los sistemas automáticos de observación del tiempo, será esencial para el desarrollo del sistema de recolección de datos meteorológicos.

El desarrollo del prototipo se centrará en la creación de un sistema de recolección de datos meteorológicos que pueda ser utilizado en la industria de la aviación. El sistema se basará en un microcontrolador con múltiples sensores ambientales integrados, así como un módulo de comunicación inalámbrica. El sistema se diseñará para ser fácilmente instalable y de bajo costo. Además, esperando obtener una ventaja en disponibilidad de datos, el proyecto se á para que recopile y envie datos meteorológicos en tiempo real.

La comparación y selección de tecnologías a emplear en el sistema de recolección de datos meteorológicos se realizará en base a los resultados de la investigación. Cada una de las tecnologías seleccionadas será explicada en detalle, incluyendo su funcionamiento, ventajas y desventajas.

La recolección de datos meteorológicos se realizará mediante sensores y módulos de comunicación inalámbrica. Los sensores se utilizarán para la medición de la radiación ultravioleta, la temperatura, la humedad y la presión atmosférica. Los módulos de comunicación inalámbrica se utilizarán para la transmisión de los datos meteorológicos recopilados a un servidor en línea.

Sistemas de respaldo y redundancia serán implementados para garantizar la disponibilidad de datos. El sistema de respaldo se utilizará para almacenar los datos meteorológicos recopilados en caso de que el servidor en línea no esté disponible. El sistema de redundancia se utilizará para garantizar la disponibilidad de datos en caso de que un sensor falle.

El análisis de resultados se centrará en la evaluación de la precisión del sistema de recolección de datos meteorológicos y la comparación de los resultados con los datos meteorológicos de una estación meteorológica convencional. También se realizará una evaluación de la precisión de los datos meteorológicos transmitidos por los sistemas automáticos de observación del tiempo y los obtenidos de los servicios de datos meteorológicos en línea.

Se presentará un reporte a partir de los resultados empleando herramientas de visualización de datos, como gráficos de Excel, para facilitar la comprensión de los datos. Estas herramientas nos ayudarán a visualizar y realizar una comparación de precisión entre los datos meteorológicos recopilados y los datos meteorológicos obtenidos de los servicios de datos meteorológicos en línea. 

Una conclusión será presentada, donde a partir de los resultados obtenidos se podrá determinar si el sistema de recolección de datos meteorológicos es viable para su uso en la industria de la aviación. Así como el rango de aplicaciones en el que el sistema puede ser utilizado.

#pagebreak()

= Problemática <problematica>

La escasez de datos meteorológicos precisos, confiables y oportunos en la mayor parte del mundo, tienen graves consecuencias para una variedad de sectores e industrias. 

Entre las causas, tenemos la limitada cobertura de las existentes estaciones meteorológicas, el alto costo de instalación y mantenimiento.

El impacto de este problema se puede ver en diferentes segmentos de la sociedad, incluidos la agricultura, el transporte y el turismo. Ejemplo, los datos meteorológicos inexactos pueden dar como resultado cosechas deficientes, cancelaciones de vuelos y otras interrupciones que desencadenan en graves consecuencias económicas y sociales.

La industria aeroespacial es uno de los sectores más afectados por la falta de datos meteorológicos precisos y actualizados. Los datos meteorológicos son esenciales para la planificación y ejecución de vuelos seguros, la falta de datos precisos puede dar lugar a retrasos, desvíos y cancelaciones de vuelos.

#pagebreak()

= Hipótesis <hipotesis>

La implementación de estaciones meteorológicas automatizadas y asequibles en zonas con poca cobertura de datos meteorológicos, mejora el nivel de precisión y actualización de los datos meteorológicos a un reducido costo.

#pagebreak()

= Justificación <justificacion>

El desarrollo de un sistema de información meteorológica automatizado se justifica a partir de la necesidad de información meteorológica precisa y actualizada en la industria de la aeroespacial. Los actuales sistemas nacionales se basan en observadores humanos para informar sobre las condiciones climáticas, lo que puede dar lugar a errores de interpretación y a retrasos en la transmisión de los datos.

Trabajamos en innovar en el campo de la recolección de datos meteorológicos, ya que, a diferencia de las estaciones meteorológicas tradicionales, que suelen ser costosas y complejas de operar, se ofrece una solución económica y fácil de operar que se puede implementar en casi cualquier lugar.

#quote[
    Las estaciones meteorológicas automatizadas se han convertido en parte de la columna vertebral de la observación del clima en los Estados Unidos y Canadá, y cada vez son más comunes en todo el mundo debido a su eficiencia y ahorro de costos.
    
    @wikipedia_automated-airport-weather-station
]

Los beneficios son numerosos, y van desde una mayor seguridad a nivel personal y empresarial, hasta una mejor planificación y gestión aérea.

Mediante el desarrollo de una estación METAR asequible y automatizada, el proyecto pretende proporcionar información fiable y en tiempo real a pilotos, controladores de tráfico aéreo, así como a otros profesionales de la aviación. Especialmente en México, donde la instalación de estaciones METAR tradicionales suele ser costosa y desafiante debido a las barreras geográficas y climáticas. La actual falta de estaciones METAR automatizadas en México presenta un problema importante para la industria de la aviación, ya que los datos meteorológicos son esenciales para la planificación y la ejecución de vuelos seguros.

Al proporcionar una alternativa rentable a las estaciones METAR tradicionales, un sistema automatizado puede aumentar significativamente la disponibilidad de datos meteorológicos en México, lo que a su vez puede mejorar la seguridad y la eficiencia de la aviación. El mismo sistema puede ser utilizado para recopilar datos meteorológicos en otras industrias, como la agricultura, la minería y el turismo. Estos datos pueden ser utilizados para mejorar la planificación y la gestión de los recursos, mediante el uso de sistemas de análisis de datos. El desarrollo de un sistema METAR automatizado asequible es un paso crucial en la mejora de la seguridad y la eficiencia de la aviación en México.

#pagebreak()

= Objetivo <objetivo>

== General <objetivo_general>

Desarrollar un sistema de información meteorológica automatizado, que permita la recopilación de datos meteorológicos en tiempo real, con un costo reducido y una instalación sencilla.

== Específico <objetivo_especifico>

- Investigar y analizar las características de las estaciones METAR tradicionales y automatizadas.

- Implementar un sistema de información meteorológica automatizado.

- Analizar los resultados de la implementación del sistema, mediante la comparación de los datos recopilados con los datos de una estación METAR tradicional y los datos de múltiples servicios de pronóstico del tiempo.

- Presentar el desarrollo y los resultados de la investigación en un informe técnico.

#pagebreak()

= Marco Teórico <marco-teorico>

== Antecedentes <marco-teorico_antecedentes>

La industria de la aviación depende en gran medida de la información meteorológica precisa y oportuna para garantizar la seguridad de los pasajeros y la tripulación. La disponibilidad de datos meteorológicos actuales y precisos ayuda a los pilotos a tomar decisiones informadas sobre rutas de vuelo, consumo de combustible y enfoques de aterrizaje. La OACI recomienda que todos los aeropuertos tengan un servicio meteorológico que proporcione información meteorológica de acuerdo a los estándares establecidos. @WMO_Guide

La forma tradicional de proporcionar información meteorológica es a través de la observación manual y la elaboración de informes por parte de meteorólogos o personal capacitado. Sin embargo, este proceso es tardado y costoso, especialmente para los aeropuertos pequeños y con recursos limitados. Además, estos informes pueden tener errores debido a las malas prácticas al momento de la toma o transmisión de los datos. Los sistemas automatizados, por otro lado, pueden reducir significativamente el costo y el tiempo requerido para recolectar y reportar los datos meteorológicos. En los últimos años el crecimiento en el interés en el desarrollo de procesos automatizados, y herramientas tales como microcontroladores que cada vez son más accesibles por su precio y disponibilidad, han permitido el desarrollo de sistemas automatizados de bajo costo, pudiendo implementar estos sistemas a aeródromos pequeños y remotos. @Barani_Affordable-Auto-METAR

Las estaciones meteorológicas automatizadas son estaciones meteorológicas que se instalan en lugares remotos y que se conectan a una red de comunicaciones para transmitir datos meteorológicos en tiempo real a un centro de datos. Estas estaciones se utilizan para recopilar datos meteorológicos en lugares donde no hay estaciones meteorológicas convencionales, como aeropuertos, carreteras, puentes, túneles, etc. Estas estaciones son una alternativa rentable a las estaciones meteorológicas tradicionales, ya que pueden reducir significativamente los costos de instalación y mantenimiento. @Barani_What-is-the-difference-between-METAR-and-AUTO-METAR

== Bases Teóricas <marco-teorico_bases-teoricas>

=== Aeroespacial <marco-teorico_bases-teoricas_aeroespacial>

La industria aeroespacial es un sector de la economía que se dedica al diseño, la fabricación y la operación de aeronaves y sistemas espaciales. La industria aeroespacial incluye la aviación civil, la aviación militar, la exploración espacial y la investigación científica. La industria aeroespacial es una de las industrias más importantes del mundo, ya que desempeña un papel crucial en la economía, la seguridad y la exploración del espacio. @dictionary

=== Aeronáutica <marco-teorico_bases-teoricas_aeronautica>

La aeronáutica es una disciplina científica y tecnológica que se ocupa del estudio, diseño, construcción y operación de aeronaves, así como de los principios y fenómenos que rigen su vuelo. Esta disciplina interdisciplinaria combina la física, la matemática, la ingeniería y la informática para desarrollar y mejorar la navegación aérea. La aeronáutica abarca áreas como la aerodinámica, la propulsión, la estructura de las aeronaves, la navegación y el control de vuelo. Su objetivo principal es garantizar la seguridad y eficiencia de los vuelos, así como impulsar la innovación y el avance tecnológico en la industria aeroespacial. @Aviation-Terminology

=== Aviación <marco-teorico_bases-teoricas_aviacion>

La aviación es el sector que se encarga de la operación de aeronaves, incluidos los vuelos comerciales, los vuelos privados y los vuelos militares. La aviación es una industria de gran importancia, ya que permite el transporte de personas y mercancías a gran velocidad y a largas distancias. @dictionary

=== Aviónica <marco-teorico_bases-teoricas_avionica>

La aviónica es una rama de la ingeniería aeroespacial que se ocupa del diseño, la fabricación y el mantenimiento de los sistemas electrónicos y de comunicación de las aeronaves. La aviónica incluye sistemas como los de navegación, comunicación, control de vuelo, radar, sistemas de entretenimiento y sistemas de seguridad. La aviónica es una parte fundamental de la aviación, ya que garantiza la seguridad y eficiencia de los vuelos. @Aviation-Terminology

=== Electrónica <marco-teorico_bases-teoricas_electronica>

La electrónica es una rama de la física y la ingeniería que se ocupa del estudio y la aplicación de los dispositivos y circuitos electrónicos. La electrónica abarca áreas como la teoría de circuitos, la electrónica digital, la electrónica analógica, la electrónica de potencia y la microelectrónica. La electrónica es una disciplina fundamental en la industria aeroespacial, ya que se utiliza en el diseño y la fabricación de sistemas de aviónica, sistemas de control de vuelo, sistemas de comunicación y sistemas de navegación. @dictionary

=== Meteorología <marco-teorico_bases-teoricas_meteorologia>

La meteorología es la ciencia que estudia los fenómenos atmosféricos, como el clima, el tiempo y los eventos meteorológicos extremos, y sus efectos en la Tierra y en los seres vivos. Esta disciplina se basa en la física, la química y la biología para comprender y predecir los cambios en la atmósfera y sus interacciones con otros sistemas terrestres. La meteorología es fundamental para la planificación y la toma de decisiones en diversas áreas, como la agricultura, la aviación, la navegación marítima, la gestión de desastres y la investigación científica. Los meteorólogos utilizan una variedad de instrumentos y técnicas, como el análisis de datos, la observación satelital, los modelos numéricos y la inteligencia artificial, para recopilar, analizar y pronosticar el clima y el tiempo. El estudio de la meteorología contribuye a mejorar la comprensión de los fenómenos naturales y a desarrollar estrategias para mitigar los impactos de los eventos meteorológicos adversos en la sociedad y el medio ambiente. @dictionary

== Bases Conceptuales <marco-teorico_bases-conceptuales>

=== Desarrollo de Software <marco-teorico_bases-conceptuales_desarrollo-de-software>

El desarrollo de software es el proceso de creación de programas informáticos. Es un proceso iterativo que involucra la planificación, el diseño, la implementación, la prueba y la documentación de los programas. Este proceso es complejo y requiere una gran cantidad de conocimientos y habilidades técnicas.

=== Estaciones METAR <marco-teorico_bases-conceptuales_estaciones-metar>

Las estaciones METAR son instalaciones meteorológicas utilizadas en aeropuertos para recopilar datos sobre las condiciones atmosféricas. Estas estaciones son empleadas por pilotos, controladores de tráfico aéreo y otros profesionales de la aviación. @Barani_What-is-the-difference-between-METAR-and-AUTO-METAR  Las estaciones METAR convencionales emplean sensores para obtener mediciones meteorológicas, mientras que las estaciones METAR automatizadas utilizan sensores y un microcontrolador para recopilar y procesar los datos.

Las estaciones METAR convencionales suelen estar compuestas por una variedad de sensores que miden parámetros como la temperatura, la humedad, la presión atmosférica, la velocidad y dirección del viento, la visibilidad y las condiciones de precipitación. Estos sensores están ubicados en diferentes partes del aeropuerto y se comunican con una estación central que recopila y procesa los datos.

Por otro lado, las estaciones METAR automatizadas utilizan tecnología de microcontroladores para recopilar y procesar los datos meteorológicos. Estos dispositivos están programados para leer los datos de los sensores y enviarlos a una estación central a través de una red de comunicaciones. La estación central recibe los datos y los procesa para generar informes meteorológicos en tiempo real.

En resumen, las estaciones METAR son instalaciones meteorológicas utilizadas en aeropuertos para recopilar datos sobre las condiciones atmosféricas. Las estaciones convencionales emplean sensores para obtener mediciones meteorológicas, mientras que las automatizadas utilizan sensores y microcontroladores para recopilar y procesar los datos de manera eficiente y rentable.


=== Microcontroladores <marco-teorico_bases-conceptuales_microcontroladores>

Un microcontrolador es un circuito integrado que contiene un procesador, memoria y periféricos. @arduino-workshop Los microcontroladores son dispositivos de bajo costo, que pueden ser programados para realizar una gran variedad de tareas. Los microcontroladores son ampliamente utilizados en la industria, ya que son pequeños, baratos y fáciles de programar.

==== Arduino <marco-teorico_bases-conceptuales_arduino>

Arduino es un sistema de desarrollo de hardware y software, que permite a los usuarios crear sistemas electrónicos interactivos. Arduino es una plataforma de desarrollo de hardware libre y software, que se utiliza para crear dispositivos electrónicos interactivos. Arduino se basa en un microcontrolador, que es un circuito integrado que contiene un procesador, memoria y periféricos. El microcontrolador es el cerebro del sistema, y es el encargado de procesar los datos y ejecutar las instrucciones del programa. El microcontrolador se conecta a los periféricos, que son los dispositivos que se utilizan para interactuar con el mundo exterior. Los periféricos incluyen sensores, actuadores, pantallas, etc. Arduino se conecta a un ordenador, que es utilizado para programar el microcontrolador y para cargar el programa en el microcontrolador. El programa se carga en el microcontrolador, y el microcontrolador ejecuta las instrucciones del programa. Arduino es un sistema de desarrollo de hardware y software, que permite a los usuarios crear sistemas electrónicos interactivos. @the-arduino-inventors-guide

==== ESP32 <marco-teorico_bases-conceptuales_esp32>

ESP32 es un microcontrolador de bajo costo, que se utiliza para crear sistemas electrónicos interactivos. El ESP32 es compatible con Arduino, por lo que puede ser programado utilizando el entorno de desarrollo de Arduino. @arduino-workshop

=== Sensores <marco-teorico_bases-conceptuales_sensores>

Un sensor es un dispositivo que se utiliza para medir una variable física, como la temperatura, la humedad, la presión, etc. @the-arduino-inventors-guide Los sensores son ampliamente utilizados en la industria, ya que permiten a los sistemas automatizados recopilar datos de forma automática. Los sensores son dispositivos de bajo costo, que pueden ser conectados a un microcontrolador para recopilar datos.


=== Sistema de Bases de Datos <marco-teorico_bases-conceptuales_sistema-de-bases-de-datos>

Un sistema de bases de datos es un conjunto de programas que se utilizan para crear, administrar y consultar una base de datos. @write-great-code-vol-2 Los sistemas de bases de datos son ampliamente utilizados en la industria, ya que permiten a los usuarios almacenar, administrar y consultar grandes cantidades de datos. Los sistemas de bases de datos son dispositivos de bajo costo, que pueden ser conectados a un ordenador para almacenar, administrar y consultar datos.


=== Sistema de Comunicaciones <marco-teorico_bases-conceptuales_sistema-de-comunicaciones>

Un sistema de comunicaciones es un conjunto de dispositivos que se utilizan para transmitir datos entre dos o más dispositivos. Los sistemas de comunicaciones son ampliamente utilizados en la industria, ya que permiten a los usuarios transmitir datos entre dispositivos. @write-great-code-vol-2

#pagebreak()

= Descripción de Símbolos y Convenciones <descripcion-de-simbolos-y-convenciones>

Para una mejor lectura del siguiente documento, se han definido los siguientes símbolos y convenciones:

== Notas <descripcion-de-simbolos-y-convenciones_notas>

Información adicional o aclaraciones sobre un tema específico.

#note[
    Este es un ejemplo de una nota.
]

== Citas <descripcion-de-simbolos-y-convenciones_citas>

Cita una fuente o referencia en el texto.

#quote[
    Este es un ejemplo de una cita.
    \ 
    (Autor, 2024)
]

La primera cita del documento ya fue presentada en la Sección 11.

== Referencias <descripcion-de-simbolos-y-convenciones_referencias>

Proporcionar información sobre una fuente o referencia citada en el texto.

De modo que la referencia anterior puede ser reescrita de la siguiente forma:

\

La primera cita del documento ya fue presentada en la #rf[@justificacion].

\

== Definiciones <descripcion-de-simbolos-y-convenciones_definiciones>

Definición de un término específico.


#df[
    *Ejemplo.* Este es un ejemplo de una definición.
]

#pagebreak()

== Código <descripcion-de-simbolos-y-convenciones_codigo>

El código se utiliza para mostrar ejemplos de código fuente, comandos de terminal, scripts de shell, etc.

```py
def fibonacci(n):
    if n <= 0:
        return []
    elif n == 1:
        return [0]
    elif n == 2:
        return [0, 1]
    else:
        fib_sequence = [0, 1]
        while len(fib_sequence) < n:
            next_num = fib_sequence[-1] + fib_sequence[-2]
            fib_sequence.append(next_num)
        return fib_sequence

def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True

def find_prime_fibonacci(n):
    prime_fibonacci = []
    fib_sequence = fibonacci(n)
    for num in fib_sequence:
        if is_prime(num):
            prime_fibonacci.append(num)
    return prime_fibonacci

n = int(input("Enter the number of Fibonacci numbers to generate: "))
prime_fibonacci = find_prime_fibonacci(n)
print("Prime Fibonacci numbers:")
print(prime_fibonacci)
```

= Desarrollo <desarrollo>

La primera parte se dedicará a la investigación de los temas relacionados con el proyecto, como la meteorología, la aviación, el desarrollo de software, los microcontroladores, los sensores, los sistemas de bases de datos y los sistemas de comunicaciones. La segunda parte se dedicará al prototipo del proyecto, que consiste en la creación de un prototipo funcional del proyecto. La tercera parte se dedicará a la realización de pruebas y a la obtención de resultados. La cuarta parte se dedicará al análisis de los resultados obtenidos, y a la elaboración de conclusiones.

== Investigación <desarrollo_investigacion>

=== Observación Meteorológica <desarrollo_investigacion_observacion-meteorologica>

Es la medición cuantitativa y cualitativa de una o más variables meteorológicas y se remiten inmediatamente a un centro recolector de datos mediante mensajes codificados, por la vía de comunicación más rápida disponible. @NMX-1

=== Reportes Meteorológicos. METAR, TAF y NOTAM <desarrollo_investigacion_reportes-meteorologicos-metar-taf-y-notam>

*METAR.* Reporte meteorológico estándar que se emite en aeropuertos y otras estaciones meteorológicas. @dictionary

Los reportes son emitidos comúnmente a través de estaciones METAR. Dichos reportes pueden ser consultados en la página de la Administración Federal de Aviación (FAA) en Estados Unidos @AWC_METAR-Information. También se pueden consultar a nivel nacional en la página del Centro de Análisis y Pronósticos Meteorológicos Aeronáuticos (CAPMA) @CAPMA.

Tomando en cuenta la "Guía de Referencia" @METAR-TAF-Abbreviations y a partir de la #rf[@text-metar] se describe cada componente del METAR en la #rf[@table-metar]

#figure(
    align(left)[
        ```
        METAR KABC 121755Z AUTO 21016G24KT 180V240 1SM R11/P6000FT -RA BR BKN015 OVC025 06/04 A2990 RMK AO2 PK WND 20032/25 WSHFT 1715 VIS 3/4V1 1/2 VIS 3/4 RWY11 RAB07 CIG 013V017 CIG 017 RWY11 PRESFR SLP125 P0003 60009 T00640036 10066 21012 58033 TSNO $
        ```
    ],
    caption: [Ejemplo de reporte METAR.],
    kind: "reference",
    supplement: [Referencia],

)<text-metar>

Se anexa un breve ejemplo de la decodificación de un reporte METAR en la #rf[@anexos_reportes_metar]

#pagebreak()

#figure(
    table(
    columns: (25%, 55%, 20%),
    inset: 10pt,
    align: left + horizon,
    [*Característica*], [*Descripción*], [*Ejemplo*],
    [Tipo de reporte], [`METAR`: informe horario (programado); `SPECI`: informe especial (no programado).], [`METAR`],
    [Identificador de estación], [Cuatro caracteres alfabéticos; Identificador de ubicación de la OACI.], [`KABC`],
    [Fecha y hora de la observación], [Todas las fechas y horas en UTC usando un reloj de 24 horas; fecha de dos dígitos y hora de cuatro dígitos; siempre se adjunta con `Z` para indicar UTC.], [`121755Z`],
    [Modificador de reporte], [`AUTO` para informe totalmente automatizado, sin intervención humana; eliminado cuando el observador lo registra.], [`AUTO`],
    [Dirección y velocidad del viento], [Dirección en decenas de grados desde el norte verdadero (primeros tres dígitos); dos dígitos siguientes: velocidad en nudos enteros; según sea necesario Ráfagas (carácter) seguidas de la velocidad máxima observada; siempre adjunto con `KT` para indicar nudos; `00000KT` para calma; si la dirección varía en 60° o más, se notifica un grupo de dirección de viento variable.], [`21016G24KT`],
    [Visibilidad], [Visibilidad predominante en millas terrestres y fracciones (espacio entre millas enteras y fracciones); siempre adjunto con `SM` para indicar millas terrestres; valores menores a 1/4 informados como `M1/4`.], [`1SM`],
    ),
    caption: "Características de un reporte METAR.",
    kind: table,
    supplement: [Tabla]
)<table-metar>

#pagebreak()

#emptyFigure[
    #table(
        columns: (25%, 55%, 20%),
        inset: 10pt,
        align: left + horizon,
        [*Característica*], [*Descripción*], [*Ejemplo*],
        [Visibilidad de pista], [Valor RVR de 10 minutos en cientos de pies; informado si la visibilidad predominante es ≤ una milla o RVR ≤ 6000 pies; siempre se agrega `FT` para indicar pies; valor con el prefijo `M` o `P` para indicar que el valor es más bajo o más alto que el valor RVR notificable.], [`R11/6000FT`],
        [Fenómeno], [`RA`: precipitación líquida que no congela; `SN`: precipitación congelada distinta del granizo; `UP`: precipitación de tipo desconocido; intensidad antepuesta a la precipitación: ligera `-`, moderada (sin signo), fuerte `-`; `FG`: niebla; `FZFG`: niebla helada (temperatura inferior a 0°C); `BR`: niebla; `HZ`: neblina; `SQ`: turbonada; máximo de tres grupos informados; aumentado por observador: `FC` (nube en embudo/tornado/tromba marina); `TS` (tormenta); `GR` (granizo); `GS` (pequeño granizo; menor de 1/4 de pulgada); `FZRA` (intensidad; lluvia helada); `VA` (ceniza volcánica).], [`-RA BR`],
        [Condición de cielo], [Cantidad y altura de nubes: `CLR` (no se detectan nubes por debajo de los 12000 pies); `FEW` (pocos); `SCT` (disperso); `BKN` (roto); `OVC` (nublado); seguido de altura de 3 dígitos en cientos de pies; o visibilidad vertical (VV) seguida de altura para techo indefinido.], [`BKN015 OVC025`],
        [Temperatura y punto de rocío], [Cada uno se informa en grados Celsius enteros utilizando dos dígitos; los valores están separados por un solidus; los valores bajo cero tienen el prefijo `M` (menos).], [`06/04`],
    )
]

#pagebreak()

#emptyFigure[
    #table(
        columns: (25%, 55%, 20%),
        inset: 10pt,
        align: left + horizon,
        [*Característica*], [*Descripción*], [*Ejemplo*],
        [Altímetro], [Altímetro siempre con el prefijo `A` que indica pulgadas de mercurio; reportado usando cuatro dígitos: decenas, unidades, décimas y centésimas.], [`A2990`],
        [Identificador de observaciones], [`RMK`], [`RMK`],
        [Actividad de tornados], [incluir `TORNADO`, `FUNNEL CLOUD` o `WATERSPOUT`, hora de inicio/fin, ubicación, movimiento.], [`TORNADO B25 N MOV E`],
        [Tipo de estación automatizada], [], [`AO2`],
        [Viento máximo], [`PK WND` dddff(f)/(hh)mm; dirección en decenas de grados, velocidad en nudos enteros y tiempo.], [`PK WND 20032/25`],
        [Cambio de dirección del viento], [`WSHFT` dddff(f)/(hh)mm; dirección en decenas de grados, velocidad en nudos enteros y tiempo.], [`WSHFT 1715`],
        [Visibilidad de torre o superficie], [`TWR VIS` vvvvv: visibilidad informada por el personal de la torre, `SFC VIS` vvvvv: visibilidad informada por ASOS.], [`TWR VIS 2` | `SFC VIS 2`],
        [Visibilidad variable prevalente], [`VIS` vvvvv`Vn` v/v: visibilidad variable prevalente.], [`VIS 3/4V1 1/2`],
        [Visibilidad en 2da ubicación], [`VIS` v/v `LOC`: visibilidad en 2da ubicación.], [`VIS 3/4 RWY11`],
        [Rayos], [freq`LTG`loc: Frecuencia y ubicación de rayos.], [`FRQ LTG NE`],
    )
]

#pagebreak()

#emptyFigure[
    #table(
        columns: (25%, 55%, 20%),
        inset: 10pt,
        align: left + horizon,
        [*Característica*], [*Descripción*], [*Ejemplo*],
        [Inicio y final de precipitación y tormentas], [w'w'`B`(hh)mmE(hh)mm; `TSB`(hh)mm`E`(hh)mm], [`RAB07`],
        [Virga], [Precipitación que cae de las nubes y se evapora antes de tocar el suelo.], [`VIRGA`],
        [Altura variable de nubes], [`CIG`hnhnhn`V`hxhxhx; informado si el techo en el cuerpo del informe es < 3000 pies y variable.], [`CIG 013V017`],
        [Altura de las nubes en 2da ubicación], [`CIG` hnhnhn`LOC`: altura de las nubes en 2da ubicación.], [`CIG 017 RWY11`],
        [Presión ascendiendo o descendiendo rápidamente], [`PRESRR` ascendiendo rápidamente, `PRESFR` descendiendo rápidamente.], [`PRESFR`],
        [Presión al nivel del mar], [`SLP`ppp: presión al nivel del mar en decenas de hPa.], [`SLP125`],
        [Precipitación de la última hora], [`P`rrr; en 0,01 pulgadas desde el último METAR; un rastro es `P0000`.], [`P0003`],
        [Precipitación de las últimas 3 o 6 horas], [HRRRR; cantidad de precipitación en 0,01 pulgadas durante las últimas 6 horas notificadas en observaciones a las 00, 06, 12 y 18 UTC y durante las últimas 3 horas en observaciones a las 03, 09, 15 y 21 UTC; un rastro es `60000`.], [`60009`],
        [Precipitación de las últimas 24 horas], [7RRRR; cantidad de precipitación en 0,01 pulgadas durante las últimas 24 horas; un rastro es `70000`.], [`70003`],
    )
]

#pagebreak()

#emptyFigure[
    #table(
        columns: (25%, 55%, 20%),
        inset: 10pt,
        align: left + horizon,
        [*Característica*], [*Descripción*], [*Ejemplo*],
        [Temperatura y punto de rocío por hora], [Horas y decimas de grados Celsius], [`T00640036`],
        [Máxima temperatura en las últimas 6 horas], [`1` hora y decimas de grados Celsius], [`10066`],
        [Mínima temperatura en las últimas 6 horas], [`2` hora y decimas de grados Celsius], [`21012`],
        [Máxima temperatura en las últimas 24 horas], [`4` hora y decimas de grados Celsius], [`400461006`],
        [Tendencia de presión], [5appp: el carácter a (`8`) indica que la presión está aumentando.], [`58033`],
        [Estado del sensor], [`RVRNO`: Falta `RVR`; `PWINO`: información del identificador de precipitación no disponible; `PNO`: cantidad de precipitación no disponible; `FZRANO`: información sobre lluvia helada no disponible; TSNO: información de tormentas no disponible; `VISNO` (LOC): visibilidad en la ubicación secundaria no disponible, por ejemplo, `VISNO RWY06`; `CHINO` (LOC): (indicador de altura de nubes) condición del cielo en la ubicación secundaria no disponible], [`TSNO`],
        [Mantenimiento], [`$`: Se requiere mantenimiento del sistema.], [`$`],
    )
]

#pagebreak()

*TAF.* Pronóstico de condiciones meteorológicas para un aeropuerto o zona de navegación. @dictionary

#figure(
    align(left)[
        ```
        TAF MMLO 020430Z 0206/0306 22010KT P6SM BKN200 
          FM021900 24015KT P6SM BKN200 
          FM030400 24008KT 6SM HZ BKN200
        ```
    ],
    caption: [Ejemplo de reporte TAF.],
    kind: "reference",
    supplement: [Referencia],

)<text-taf>

Este tipo de pronóstico se encuentra fuera de nuestras capacidades, por lo que la información se reservará a la emitida por la Administración Federal de Aviación (FAA) en Estados Unidos a nivel internacional y a nivel nacional a la emitida por el Centro de Análisis y Pronósticos Meteorológicos Aeronáuticos (CAPMA).

Se anexa un breve ejemplo de la decodificación de un reporte TAF en la #rf[@anexos_reportes_taf]

*NOTAM.* Notificación de aeronavegabilidad. @dictionary

#figure(
    align(left)[
        ```
        A1234/06 NOTAMR A1212/06
        Q)EGTT/QMXLC/IV/NBO/A/000/999/5129N00028W005
        A)EGLL
        B)0609050500
        C)0704300500
        E)DUE WIP TWY B SOUTH CLSD BTN 'F' AND 'R'. TWY 'R' CLSD BTN 'A' AND 'B' AND DIVERTED VIA NEW GREEN CL AND BLUE EDGE LGT. CTN ADZ
        ```
    ],
    caption: [Ejemplo de reporte NOTAM.],
    kind: "reference",
    supplement: [Referencia],

)<text-notam>

Este tipo de notificación se encuentra fuera de nuestras capacidades, por lo que la información se reservará a la emitida por la Administración Federal de Aviación (FAA) en Estados Unidos a nivel internacional y a nivel nacional a la emitida por el Centro de Análisis y Pronósticos Meteorológicos Aeronáuticos (CAPMA).

Se anexa un breve ejemplo de la decodificación de un reporte NOTAM en la #rf[@anexos_reportes_notam]

=== Estaciones Meteorológicas <desarrollo_investigacion_estaciones-meteorologicas>

Instalación que cuenta con el instrumental, equipos y sistemas destinados a medir y registrar regularmente variables meteorológicas. @NMX-1

El servicio que brindan las estaciones meteorológicas es el de proporcionar información meteorológica de forma continua y en tiempo real. Esta información es de gran utilidad para la toma de decisiones en diversas áreas, como la agricultura, la aviación, la navegación, la industria, la pesca, la minería, la construcción, la seguridad pública, entre otras.

=== Estaciones Meteorológicas en Aeropuertos <desarrollo_investigacion_estaciones-meteorologicas-aeropuertos>

Las estaciones meteorológicas son instaladas en aeropuertos con el objetivo de proporcionar información meteorológica de forma continua y en tiempo real.

=== Estaciones Meteorológicas Automáticas<desarrollo_investigacion_estaciones-meteorologicas-automaticas-nacional-internacional>

*Automated Surface/Weather Observing Systems (ASOS/AWOS).* El programa de Sistemas Automatizados de Observación de Superficie (ASOS) es un esfuerzo conjunto del Servicio Meteorológico Nacional (NWS), la Administración Federal de Aviación (FAA) y el Departamento de Defensa (DOD). Actualmente hay más de 900 sitios de ASOS en los Estados Unidos. Estos sistemas automatizados recopilan observaciones de forma continua, las 24 horas del día. Los datos de ASOS se archivan en la base de datos Global Surface Hourly. @ASOS-AWOS

Las unidades del Sistema Automatizado de Observación del Tiempo (AWOS) son operadas y controladas por la Administración Federal de Aviación. Estos sistemas se encuentran entre las estaciones meteorológicas automatizadas más antiguas y son anteriores a ASOS. Por lo general, informan a intervalos de 20 minutos y, a diferencia de ASOS, no informan observaciones especiales para condiciones climáticas que cambian rápidamente.

*EMA's.* Sistema autónomo y automático formado por un conjunto de sensores de medición, dispositivos eléctricos, electrónicos y mecánicos, montados sobre una estructura de soporte, en donde son distribuidos, orientados y conectados al Sistema de Adquisición, Procesamiento y Almacenamiento de Datos (SAPAD) de la estación, con el objetivo de realizar la medición y registro de las variables meteorológicas que imperan en el lugar, y transmitir los datos obtenidos a la oficina central, en donde serán utilizados y almacenados a una base de datos. @EMAs

Sensores básicos que integran una EMA:

- Velocidad del viento.
- Dirección del viento.
- Presión atmosférica.
- Temperatura.
- Humedad relativa.
- Radiación solar.
- Precipitación.

La #rf[@image-ema] muestra el bosquejo comúnmente utilizado para representar una EMA.

#figure(
    image("images/ema.jpg", width: 100%),
    caption: [Bosquejo de una EMA (_SMN_).],
    kind: image,
    supplement: [Figura],
)<image-ema>

=== Sensores de Condiciones Ambientales <desarrollo_investigacion_sensores-condiciones-ambientales>

Para evitar la búsqueda exhausta de todos y cada uno de los sensores que se pueden utilizar en una estación meteorológica, se ha decidido solo mencionar los sensores que se utilizarán en el proyecto, los cuales se encuentran en el mercado y que se pueden adquirir fácilmente.

La lista de los sensores requeridos es la siguiente:

- Sensor de Temperatura.

- Sensor de Presión.

- Sensor de Humedad.

- Sensor de Radiación Solar.

- Sensor de Dirección del Viento.

- Sensor de Velocidad del Viento.

- Sensor de Precipitación.

Ideando la forma de integrar todos estos sensores en una sola estación meteorológica, se llegó a la conclusión de que la mejor opción es utilizar un microcontrolador que cuente con un amplio número de puertos de entrada y salida, así como con capacidades WiFi y Bluetooth. El microcontrolador que se utilizará en el proyecto es el ESP32, se hablara más de él en la @desarrollo_prototipo.

Para el sensor de temperatura tenemos dos opciones, trabajar con un sensor de temperatura y humedad (DHT22), o trabajar con un sensor de temperatura, presión y humedad (BME280). El sensor de temperatura y humedad (DHT22) es un sensor de bajo costo, pero no es muy preciso, por lo que se decidió utilizar el sensor de temperatura, presión y humedad (BME280). Además de que previamente ya se ha trabajado con el DHT22 y el BME680, por lo que se tiene experiencia con estos sensores.

Por ahora cubrimos temperatura, presión, y humedad con un solo sensor, el BME280. Esto nos permitirá iniciar pruebas previas, puesto que ya se cuenta con un BME680 y un ESP32.

Para la radiación solar hemos optado por el VEML6075 ya que es un sensor de bajo costo y de fácil integración. Además de que es un sensor que no requiere de mucho tiempo de calibración, puesto que nos brinda los valores de UVA, UVB y UV Index directamente.

Para la dirección del viento ocupamos una veleta, para la velocidad del viento ocupamos un anemómetro, y para la precipitación ocupamos un pluviómetro. Después de realizar una búsqueda exhaustiva en el mercado, se llegó a la conclusión de que la mejor opción sería operar un kit con estos tres sensores, el SparkFun Weather Meter Kit. Este kit cuenta con un anemómetro, una veleta y un pluviómetro, además de que se puede integrar con un microcontrolador que se encarga de procesar los datos de los sensores y enviarlos a un servidor web. Este kit es de bajo costo y de fácil integración, por lo que se decidió utilizarlo.

=== Sistemas de Bases de Datos <desarrollo_investigacion_sistemas-bases-datos>

Al momento de trabajar con bases de datos, se debe tener en cuenta que existen diferentes tipos de bases de datos, cada una con sus características y ventajas. En este proyecto se utilizará una base de datos relacional, puesto que es la más utilizada y la que mejor se adapta a las necesidades del proyecto.

En un inicio se pensó en trabajar con una base de datos MySQL o MariaDB, pero al momento de realizar la búsqueda de un servidor que cumpliera con las características necesarias, se llegó a la conclusión de que la mejor opción sería utilizar una base de datos en la nube, puesto que es una base de datos que se encuentra en un servidor remoto, por lo que no es necesario tener un servidor local para almacenar los datos.

Entre las opciones más simples de operar en un servidor remoto, que sean del tipo relacional, contamos con firebase, appwrite y PocketBase.

*firebase* es una base de datos en la nube, que se puede utilizar de forma gratuita, está bastante documentada, pero al existir en el entorno de Google Cloud Computing (GCP), se debe tener en cuenta que el uso del servicio podría contribuir a costos no previstos.

*appwrite* es una nueva alternativa a firebase, que se puede utilizar de forma gratuita, está bastante completa, pero al momento no cuenta con una alternativa fácil de trabajar si se desea utilizar en un entorno local.

*PocketBase* es una base de datos más simplificada, pero con todas las características necesarias para el proyecto, además de que se puede utilizar de forma gratuita, y se puede utilizar en un entorno local y remoto sin mayor dificultad.

=== Sistemas de Comunicaciones <desarrollo_investigacion_sistemas-comunicaciones>

El protocolo seleccionado para la comunicación entre el microcontrolador y el servidor bien pudo haber sido operado a través de MQTT, pero al momento de analizar las ventajas y desventajas de cada protocolo, se llegó a la conclusión de que el protocolo HTTP es el más adecuado para el proyecto, debido a la experiencia que se tiene en la implementación de este protocolo.

#df[
    *MQTT.* Protocolo de red de máquina a máquina que proporciona una forma ligera de enviar mensajes entre dispositivos. Está diseñado para conexiones de alta latencia y baja fiabilidad, y es ideal para los dispositivos de Internet de las cosas (IoT).
]

#df[
    *HTTPS.* (Hypertext Transfer Protocol Secure) es una versión segura del protocolo HTTP, que se utiliza para la comunicación entre servidores y clientes. Este protocolo se utiliza para la comunicación entre el servidor y el cliente web.
]

Al momento de realización se cuenta con un servidor gratuito en Oracle @oracle, el cual cuenta con las siguientes características:

- 1 vCPU.
- 1GB de RAM.
- 50GB de almacenamiento.

Se encuentra operando con el sistema operativo Ubuntu Server 22.04 LTS @Ubuntu-Server, y se encuentra configurado con los siguientes servicios:

- Cloudflared @cloudflared.
- Sub-dominio redirigido a la IP del servidor.

Para mantenernos dentro de tema, se evitará extenuar hablando sobre los detalles del servidor.

=== Servicios de Datos Meteorológicos <desarrollo_investigacion_servicios-datos-meteorologicos>

Durante la búsqueda de servicios de datos meteorológicos, se encontraron varios servicios que se pueden utilizar de forma gratuita, pero al momento de analizar las características de cada uno, se llegó a la conclusión de que los servicios que se utilizarán en el proyecto son los siguientes:

*AccuWeather.* (AccuWeather, Inc.) es un proveedor de datos meteorológicos, que cuenta con una API que permite obtener datos meteorológicos de forma gratuita, pero con un límite de 50 peticiones por día. Esta API cuenta con una documentación bastante completa, y es de fácil integración. @AccuWeather-APIs

#df[
    *API.* (Application Programming Interface) es un conjunto de reglas y especificaciones que se utilizan para definir cómo se comunican dos aplicaciones entre sí. Las API permiten a las aplicaciones compartir datos y funcionalidades entre sí.
]

*AWC.* El Aviation Weather Center, cuenta con un servicio de datos meteorológicos, que permite obtener datos meteorológicos de forma gratuita, no hay un límite esclarecido, pero se deja a criterio del usuario, ya que este debe tomar en cuenta que si realiza demasiadas peticiones será bloqueado. El sistema usado para la obtención de datos es a través del Text-Data-Server (TDS), el cual es un servicio que permite obtener datos meteorológicos en formato de texto, este es el más complicado puesto que no cuenta con una documentación completa, y es necesario realizar pruebas para obtener los datos deseados. @AWC_Text-Data-Server

*Open-Meteo.* (Open-Meteo) es un proveedor de datos meteorológicos, que cuenta con una API que permite obtener datos meteorológicos de forma gratuita, pero con un límite de 10,000 peticiones por día, si ese límite es excedido se puede solicitar un aumento de límite. Esta API cuenta con una documentación bastante completa, y es de fácil integración. @Open-Meteo-Documentation

*OpenWeatherMap.* (OpenWeatherMap) es un proveedor de datos meteorológicos, que cuenta con una API que permite obtener datos meteorológicos de forma gratuita, pero con un límite de 1,000 peticiones por día y 60 peticiones por minuto. Esta API cuenta con una documentación bastante completa, y es de fácil integración. @OpenWeather-API

Se intento agregar a los servicios empleados el ofrecido por la CONAGUA a través del SMN (Servicio Meteorológico Nacional), pero al momento de realizar las pruebas de su API se obtuvo que las estaciones más cercanas a la ubicación prueba llevaban de 3 a 6 años sin actualizar sus datos meteorológicos, por lo que se descartó su uso. @Datos-Abiertos

La integración y pruebas se verán más a fondo en la #rf[@desarrollo_prototipo_servidor]

#pagebreak()

== Prototipo <desarrollo_prototipo>

Para llevar a cabo un desarrollo más íntegro del proyecto, se decidió dividir el proyecto en 2 prototipos, uno inicial para familiarizarnos con el entorno de desarrollo y el hardware, y otro prototipo final, que será el que se utilizará para las pruebas en campo.

El prototipo inicial se basa en el uso de un microcontrolador ESP32, el cual cuenta con un sensor BME680, el cual es un sensor de temperatura, humedad, presión y calidad del aire, el cual cuenta con una interfaz I2C, por lo que se puede conectar directamente al microcontrolador, sin necesidad de utilizar un conversor analógico digital (ADC).

#df[
    *I2C.* (Inter-Integrated Circuit) Es un protocolo de comunicación de dos cables que permite la comunicación entre varios dispositivos a través de dos cables.
]

Para iniciar debemos de implementar un sistema de bases de datos a través del cual llevar a cabo las pruebas de comunicación y registro de datos. Recordando la #rf[@desarrollo_investigacion_sistemas-bases-datos] donde hablamos acerca de los sistemas de bases de datos, parte en la cual decidimos que la base de datos que se utilizaría en el proyecto sería PocketBase, debido a que es una base de datos más simplificada, pero con todas las características necesarias para el proyecto, además de que se puede utilizar de forma gratuita en un entorno local y remoto sin mayor dificultad.

La forma más fácil de comenzar es descargar la aplicación PocketBase mínima preconstruida @PocketBase

=== PocketBase <desarrollo_prototipo_pocketbase>

Al momento de trabajar con PocketBase, tenemos que considerar la advertencia que nos recibe la primera página de su documentación:

#note[
    Se debe tomar en cuenta que PocketBase aún está en desarrollo activo y no se garantiza la compatibilidad total con versiones anteriores antes de llegar a v1.0.0.
]

Las pruebas y el proyecto se empezarán a realizar en la versión v0.14.0, disponible en https://github.com/pocketbase/pocketbase/releases/tag/v0.14.0

Aun así, se planea continuar actualizando la versión en uso mientras esta no suponga problemáticas, e igualmente se fijarán las pruebas en el uso de una sola versión en específico, la cual será indicada posteriormente.

==== Entorno Local <desarrollo_prototipo_pocketbase_entorno-local>

Para el entorno local se trabajó en una máquina personal con el sistema operativo Fedora 37, la cual cuenta con una versión de PocketBase preconstruida, por lo que no fue necesario realizar la construcción de la aplicación, solo fue necesario descargarla y ejecutarla. Este mismo sistema operativo posteriormente será actualizado a la versión 38, pero tal proceso no se realizará durante el periodo de pruebas de la aplicación por lo que no afectará el desarrollo del proyecto.

#df[
    *Sistema Operativo.* (SO) es el software que controla la computadora y permite la comunicación con el hardware. Se encarga de gestionar los recursos del sistema, como la memoria, el disco duro y el procesador.
]

Para trabajar con este tipo de aplicaciones binarias es necesario realizar su ejecución desde la terminal de comandos, a continuación, se describe el proceso de ejecución de PocketBase en el entorno local desde la terminal.

#note[
    Por la constante actualización y desarrollo de la aplicación PocketBase, las capturas puede que correspondan a más de una versión, empezando desde la versión v0.14.0
]

Se crea un directorio para trabajar con PocketBase, y nos movemos a este directorio:

```sh
mkdir pocketbase
cd pocketbase
```

#note[
    El código mostrado en el bloque anterior corresponde a la creación de un directorio y a la navegación a este, por lo que no es necesario ejecutarlo en la terminal. Al igual que todos los demás comandos tipo shell (.sh) que se presenten en este documento.
]

Se descarga la aplicación preconstruida de la versión v0.14.0:

```sh
wget https://github.com/pocketbase/pocketbase/releases/download/v0.15.2/pocketbase_0.15.2_linux_amd64.zip
```

Descomprimimos el archivo descargado:

```sh
unzip pocketbase_0.15.2_linux_amd64.zip
```

Para iniciar PocketBase, se debe de ejecutar el siguiente comando desde el directorio donde se encuentra el archivo ejecutable:

```sh
./pocketbase serve
```

Con una correcta ejecución debe obtenerse el siguiente resultado en terminal:

```sh
2023/04/21 14:52:41 Server started at http://127.0.0.1:8090
 ➜ REST API: http://127.0.0.1:8090/api/
 ➜ Admin UI: http://127.0.0.1:8090/_/
```

Por su compilación binaria no es necesario realizar la instalación de la aplicación, por lo que se puede ejecutar desde cualquier directorio, y es compatible para ejecución en múltiples sistemas operativos, además de estar completamente integrada para trabajarse en sistemas operativos linux.

#df[
    *Linux.* es un sistema operativo de código abierto que se ejecuta en una amplia variedad de dispositivos, desde servidores y computadoras de escritorio hasta teléfonos móviles y tabletas.
]

Una vez ejecutado el comando, se iniciará el servidor de PocketBase, el cual por defecto se ejecuta en el puerto `8090`, por lo que para acceder a la aplicación se debe de ingresar a la siguiente dirección desde un navegador web, http://127.0.0.1:8090/_/ :

#figure(
    image("images/pocketbase_login.png", width: 40%),
    caption: [Admin UI, http://127.0.0.1:8090/_/ (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<image-pocketbase_login>

Se llenan los campos de Email, Password y Password confirm con los datos que se nos solicitan, y damos click en el botón `Create and login ➜`

Se recibe una pantalla de inicio como la siguiente.

#figure(
    image("images/pocketbase_start.png", width: 90%),
    caption: [Pantalla inicial (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<image-pocketbase_start>

La interfaz para utilizar PocketBase es bastante intuitiva, por lo que no se ahondará en su uso, pero se recomienda revisar la documentación oficial de PocketBase para conocer más acerca de su uso.

Se puede observar que ya existe una "colección" o tabla como se le conoce en otros sistemas de bases de datos, la cual se llama `users`, la cual es la tabla que se crea por defecto al iniciar PocketBase, y la cual se utiliza para el registro de usuarios, por lo que no es necesario crear una tabla para el registro de usuarios. Pero en nuestro caso es innecesario su uso por lo que se procede a eliminarla.

Para eliminar la tabla `users` se debe de dar click en el botón `Delete` que se encuentra en la parte superior derecha de la tabla, y posteriormente confirmar la eliminación de la tabla.

#figure(
    image("images/pocketbase_delete.png", width: 60%),
    caption: [Eliminado de tabla `users` (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<image-pocketbase_delete_users>

Paso siguiente se creará una de las tablas que se utilizarán en el proyecto, la cual se llamará `bme680`, para ello se da click en el botón `New collection` que se encuentra en la parte superior derecha de la pantalla.

#figure(
    image("images/pocketbase_bme680.png", width: 60%),
    caption: [Creado de tabla `bm680` (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<image-pocketbase_new_collection>

Se llena el campo `Name` con el nombre de la tabla, en este caso `bme680`, y con el fin de acelerar el proceso se llenan también los fields necesarios para la creación de la tabla, en este caso se crearán los siguientes fields:

- `time` de tipo `timestamp`.
- `temperature` de tipo `number`.
- `pressure` de tipo `number`.
- `humidity` de tipo `number`.
- `gas` de tipo `number`.

Otro de los aspectos importantes al realizar la creación de la tabla es el campo `API Rules`, el cual se encuentra como un submenú al lado de la parte de `Fields`, en este apartado encontramos las reglas para los diferentes tipos de comunicación que se pueden llevar a través de la API de PocketBase.

#figure(
    image("images/pocketbase_API-rules.png", width: 75%),
    caption: [Reglas de la API (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<image-pocketbase_api_rules>

Se puede observar que por defecto todas las reglas se encuentran bloqueadas para acceso solo a administradores, para simplificar el proceso y no requerir de realizar un sistema de autenticación se pasara a desbloquear la regla de `Create rule` ya que es la única que se utilizará en esta primera parte de recolección de información.

#figure(
    image("images/pocketbase_API-rules-create.png", width: 75%),
    caption: [Habilitación de regla `Create` (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<image-pocketbase_api_rules_create>

Finalmente se da click en el botón `Create` para crear la colección.

#note[
    Es importante remarcar que a partir de este momento se referirá a lo que comúnmente conocemos como *"tablas"* como *"colección"* con el fin de adaptarnos al entorno de desarrollo de PocketBase.
]

Las siguientes colecciones a crear son autodescriptivas, se espera que el lector pueda crearlas sin mayor problema, pero en caso de dudas se puede consultar la documentación oficial de PocketBase.

Se añadirán las siguientes colecciones con sus respectivos campos:

- `accuweather`
    - `time` de tipo `timestamp`.
    - `temperature` de tipo `number`.
    - `realFeelTemperature` de tipo `number`.
    - `realFeelTemperatureShade` de tipo `number`.
    - `relativeHumidity` de tipo `number`.
    - `indoorRelativeHumidity` de tipo `number`.
    - `dewPoint` de tipo `number`.
    - `windDirection` de tipo `number`.
    - `windSpeed` de tipo `number`.
    - `uvIndex` de tipo `number`.
    - `pressure` de tipo `number`.
    - `apparentTemperature` de tipo `number`.
    - `precipitation` de tipo `number`.
#v(2em)
- `awc`
    - `raw_text` de tipo `string`.
    - `station_id` de tipo `string`.
    - `observation_time` de tipo `timestamp`.
    - `temp_c` de tipo `number`.
    - `dewpoint_c` de tipo `number`.
    - `wind_dir_degrees` de tipo `number`.
    - `wind_speed_kt` de tipo `number`.
    - `altim_in_hg` de tipo `number`.
    - `corrected` de tipo `boolean`.
    - `precip_in` de tipo `number`.
    - `metar_type` de tipo `string`.
#v(2em)
- `open_meteo`
    - `time` de tipo `timestamp`.
    - `temperature_2m` de tipo `number`.
    - `relative_humidity_2m` de tipo `number`.
    - `dewpoint_2m` de tipo `number`.
    - `apparent_temperature` de tipo `number`.
    - `pressure_msl` de tipo `number`.
    - `surface_pressure` de tipo `number`.
    - `windspeed_10m` de tipo `number`.
    - `windspeed_80m` de tipo `number`.
    - `windspeed_120m` de tipo `number`.
    - `windspeed_180m` de tipo `number`.
    - `winddirection_10m` de tipo `number`.
    - `winddirection_80m` de tipo `number`.
    - `winddirection_120m` de tipo `number`.
    - `winddirection_180m` de tipo `number`.
    - `temperature_80m` de tipo `number`.
    - `temperature_120m` de tipo `number`.
    - `temperature_180m` de tipo `number`.
    - `uv_index` de tipo `number`.
#v(2em)
- `openweathermap`
    - `time` de tipo `timestamp`.
    - `temperature` de tipo `number`.
    - `feels_like` de tipo `number`.
    - `pressure` de tipo `number`.
    - `humidity` de tipo `number`.
    - `wind_speed` de tipo `number`.
    - `wind_direction` de tipo `number`.
#v(2em)
- `station`
    - `time` de tipo `timestamp`.
    - `temperature` de tipo `number`.
    - `humidity` de tipo `number`.
    - `dewpoint` de tipo `number`.
    - `pressure` de tipo `number`.
    - `rainFall` de tipo `number`.
    - `windSpeed` de tipo `number`.
    - `windDirection` de tipo `number`.
    - `uva` de tipo `number`.
    - `uvb` de tipo `number`.
    - `uvindex` de tipo `number`.

Cada una de ellas se debe desbloquear la regla de `Create rule` para poder realizar la inserción de datos a través de la API.

==== Entorno Remoto <desarrollo_prototipo_pocketbase_entorno-remoto>

Es importante tener el servicio de la base de datos, y el de recolección de datos, funcionando las 24 horas del día, por lo que se requiere de un entorno remoto, en este caso se utilizará un Servidor Virtual Privado (VPS) con el sistema operativo Ubuntu 22.04, el cual se puede adquirir en cualquier proveedor de servicios en la nube, en este caso se utilizarán los brindados por el Oracle Free Tier. @oracle

#note[La documentación necesaria para llevar desarrollar la infraestructura del servidor se encuentra en https://www.oracle.com/mx/cloud/free/ , omitimos la documentación de la creación del servidor, la implementación para la comunicación con los servidores y base de datos, ya que es un tema muy extenso, y no es el objetivo de este documento.]

=== ESP32 - BME680 <desarrollo_prototipo_esp32-bme680>

Para iniciar con el proceso de desarrollo del prototipo se debe tener en cuenta que se requiere de un entorno de desarrollo para el ESP32, en este caso se utilizará el IDE de Arduino, el cual se puede descargar desde su página oficial https://www.arduino.cc/en/software

No se repasará el proceso de instalación del IDE de Arduino, pero se recomienda seguir la guía oficial de instalación https://www.arduino.cc/en/Guide . Una vez instalado el IDE de Arduino se debe instalar el soporte para el ESP32, para ello se debe seguir la adecuada guía de instalación correspondiente a cada sistema operativo, la cual se puede encontrar en la documentación oficial de Arduino https://www.arduino.cc/en/Guide/Cores

#note[
    El siguiente proceso utiliza una serie de herramientas de las cuales se espera se tenga una noción, para el desarrollo de código en arduino se estarán siguiendo los principios de los siguientes enunciados.
]

#quote[
    ... Arduino was not originally created for makers, engineers, or hobbyist but for design students in Icrea, Italy, as a learning platform to help them make their projects function without the needing years of electrical engineering courses or tons of math and theory. It was designed to shorten the time from "nothing" to "awesome!" -that is, from idea to physical product- for nontechnical people.
    
    @the-arduino-inventors-guide
]

#quote[
    The Arduino project has grown exponentially since its introduction in 2005. It's now a thriving industry, supported by a community of people united with the common bond of creating something new.
    
    @arduino-workshop
]

No se detallará el proceso de instalación ni de drivers ni de las herramientas empleadas, sino que se centrara en desarrollar el producto "as it is", es decir, se asume que se tiene el conocimiento y las herramientas necesarias para el desarrollo del prototipo.


#note[
    El código utilizado se encuentra en los anexos, pero también recibirá actualizaciones en el siguiente repositorio: https://github.com/Osares10/BME680-ESP32_PocketBase
]

// Guías, Manuales y Tutoriales
==== Guías, Manuales y Tutoriales <desarrollo_prototipo_esp32-bme680_guia-manual-tutorial>

A continuación, se listan los enlaces a las guías, manuales y tutoriales que se utilizaron para el desarrollo del prototipo. 

- https://lastminuteengineers.com/esp32-ntp-server-date-time-tutorial/ @Getting-Data
- https://microcontrollerslab.com/bme680-esp32-arduino-oled-display/ @BME680

// Componentes
==== Componentes <desarrollo_prototipo_esp32-bme680_componentes>

A continuación, se listan los componentes que se utilizaron para el desarrollo del prototipo.

*ESP32.* Para la comunicación e integración de los sensores se utilizó un microcontrolador ESP32, el cual se puede observar en la siguiente #rf[@ESP32].

#figure(
    image("images/ESP32.jpg", width: 40%),
    caption: [ESP32 Dev Board (_Espressif_).],
    kind: image,
    supplement: [Figura],
)<ESP32>

El ESP32 es un microcontrolador de bajo costo, que cuenta con un amplio número de puertos de entrada y salida, así como con capacidades WiFi y Bluetooth, lo que lo hace ideal para el desarrollo de prototipos de IoT.

*BME680.* Para la medición de los parámetros ambientales se utilizó un sensor BME680, el cual se puede observar en la siguiente #rf[@BME680-pic] imagen de UNIT ELECTRONICS, https://uelectronics.com .

#figure(
    image("images/BME680.jpg", width:40%),
    caption: [BME680 (_UNIT ELECTRONICS_).],
    kind: image,
    supplement: [Figura],
)<BME680-pic>

*Pantalla OLED 128 x 64 Pixel 2 Color.* Para la visualización de los datos se utilizó una pantalla OLED de 128 x 64 pixeles a 2 colores, imagen en la #rf[@OLED] propiedad de MEGATRONICA, https://megatronica.cc .

#figure(
    image("images/OLED.jpg", width:50%),
    caption: [Pantalla OLED 128 x 64 Pixel Bi-Color (_MEGATRONICA_).],
    kind: image,
    supplement: [Figura],
)<OLED>

Los demás componentes son los comunes al momento de desarrollar un prototipo de estas características, protoboard, jumpers y fuente de alimentación.

// Funcionalidades
==== Funcionalidades <desarrollo_prototipo_esp32-bme680_funcionalidades>

A continuación, se listan las funcionalidades que se implementaron en el prototipo.

- Medición de parámetros ambientales. El prototipo es capaz de medir los parámetros ambientales de temperatura, humedad, presión y calidad del aire.

- Visualización de datos. El prototipo es capaz de visualizar los datos medidos en una pantalla OLED.

- Almacenamiento de datos. El prototipo es capaz de almacenar los datos medidos en una base de datos en la nube.

// Pinouts
==== Pinouts <desarrollo_prototipo_esp32-bme680_pinouts>

A continuación, se listan los pinouts utilizados para el desarrollo del prototipo.

*ESP32.* Para la comunicación e integración de los sensores se utilizó un microcontrolador ESP32, el cual se puede observar en el siguiente #rf[@ESP32-pinout].

#figure(
    image("images/ESP32-pinout.png", width: 100%),
    caption: [Pinout ESP32 (_Last Minute Engineers_).],
    kind: "schematic",
    supplement: [Esquemático],
)<ESP32-pinout>

#df[
    *Pinout.* Es un diagrama que muestra la disposición de los pines de un dispositivo, como un microcontrolador, un circuito integrado o un conector. Los pines se numeran y se muestran en un diagrama para facilitar la conexión de los dispositivos.
]

#pagebreak()

*BME680.* Para la medición de los parámetros ambientales se utilizó un sensor BME680, el cual se puede observar en el siguiente #rf[@BME680-pinout].

#figure(
    image("images/BME680-pinout.png", width: 100%),
    caption: [Pinout BME680 (_Last Minute Engineers_).],
    kind: "schematic",
    supplement: [Esquemático],
)<BME680-pinout>

#pagebreak()

// Esquemático
==== Esquemático <desarrollo_prototipo_esp32-bme680_esquematico>

Para el desarrollo del esquemático se utilizó el brindado por Microcontrollers Lab, https://microcontrollerslab.com/bme680-esp32-arduino-oled-display/ , el cual se puede observar en el siguiente #rf[@ESP32-schematic].

#figure(
    image("images/ESP32-schematic.jpg", width: 80%),
    caption: [Unión de componentes (_Microcontrollers Lab_).],
    kind: "schematic",
    supplement: [Esquemático],
)<ESP32-schematic>

// Diagrama de Flujo
==== Diagrama de Flujo <desarrollo_prototipo_esp32-bme680_diagrama-flujo>

A continuación, se muestra el siguiente diagrama de flujo, el cual se puede observar en el siguiente #rf[@ESP32-diagram] hecho con el lenguaje de programación D2 @d2 .

#figure(
    image("diagrams/ESP32.png", width: 65%),
    caption: [Flujo del prototipo del ESP32.],
    kind: "diagram",
    supplement: [Diagrama],
)<ESP32-diagram>

#pagebreak()

// Código
==== Código <desarrollo_prototipo_esp32-bme680_codigo>

Para el desarrollo del código y esperando se siga un avance lineal en la lectura del documento, A continuación, se enuncian las bases para el desarrollo del código.

#quote[
    In the engineering fields, engineers approach a specified problem by following a prescribed set of rules, building custom solution from a combination of predetermined solutions.

    @write-great-code-vol-3
]

#quote[
    The software engineer's job is to create the best possible product given conflicting requirements by making appropiate compromises in a system's design.

    @write-great-code-vol-3
]

Se inicia el desarrollo con un simple código para el parpadeo del LED integrado, con el fin de verificar que el entorno de desarrollo este correctamente configurado.

#note[
    Los siguientes códigos serán detallados paso a paso, pero el código en su totalidad puede ser consultado en la #rf[@anexos_scripts-codigos_esp32-bme680]
]

`Blink/Blink.ino` #rf[@anexos_scripts-codigos_esp32-bme680_blink]

Se define el pin del LED integrado como salida.

```c
void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
}
```

#df[
    *.ino* Es la extensión de los archivos de código fuente de Arduino.
]

Se crea un ciclo infinito en el cual se enciende el LED integrado por un segundo y se apaga por un segundo.

```c
void loop() {
  digitalWrite(LED_BUILTIN, HIGH);
  delay(1000);
  digitalWrite(LED_BUILTIN, LOW);
  delay(1000);
}
```

Verificamos y cargamos el código en el ESP32, cuando el LED integrado parpadee, se puede continuar con el desarrollo.

Una vez verificado el entorno de desarrollo, se procede a la integración del sensor BME680, para ello se utiliza la librería BME680 de Adafruit.

`BME680/BME680.ino` #rf[@anexos_scripts-codigos_esp32-bme680_bme680]

Incluimos las librerías necesarias para el desarrollo del código.

```c
#include <Wire.h>
#include <SPI.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME680.h>
```

El uso de la librería BME680 de Adafruit requiere de la definición de los pines de comunicación del sensor, en este caso se utilizan los pines SDA y SCL.

```c
Adafruit_BME680 bme; // I2C
```

Se requiere asignar el valor de la presión atmosférica a nivel del mar en milibares, para ello se utiliza el valor de la presión atmosférica estándar al nivel del mar con un valor de `1013.25mb`.

```c
#define SEALEVELPRESSURE_HPA (1013.25)
```

Setup es la función que se ejecuta una sola vez al inicio del programa, en ella se inicializan los pines de comunicación del sensor y se verifica que el sensor esté conectado.

Iniciamos una comunicación serial con una velocidad de `115200` baudios, con el objetivo de poder visualizar los datos obtenidos del sensor en el monitor serial.

#df[
    *Baudios.* Es una unidad de medida que se utiliza para medir la velocidad de transmisión de datos en un sistema de comunicación.
]

```c
void setup() {
  Serial.begin(115200);
  while (!Serial);
  Serial.println(F("BME680 async test"));
  ...
}
```

Se verifica que el sensor esté conectado, en caso de no estar conectado se imprime un mensaje de error en el monitor serial.

```c
void setup() {
  ...
  if (!bme.begin()) {
    Serial.println(F("Could not find a valid BME680 sensor, check wiring!"));
    while(1);
  }
  ...
}
```

En la función anterior el uso de `while(1);` detiene la ejecución del programa, por lo que obliga a verifica la conexión antes de permitir que se continúe con la ejecución del programa.

Si la ejecución logra continuar es necesario inicializar el sensor, para ello se realiza la configuración de la resolución de la temperatura, humedad, presión y gas.

#pagebreak()

```c
void setup() {
  ...
  // Set up oversampling and filter initialization
  bme.setTemperatureOversampling(BME680_OS_8X);
  bme.setHumidityOversampling(BME680_OS_2X);
  bme.setPressureOversampling(BME680_OS_4X);
  bme.setIIRFilterSize(BME680_FILTER_SIZE_3);
  bme.setGasHeater(320, 150); // 320*C for 150 msFlujo
}
```
Loop es la función que se ejecuta de forma cíclica, en ella se obtienen los datos del sensor y se imprimen en el monitor serial.

#df[
    *Monitor Serial.* Es una herramienta que permite visualizar los datos obtenidos del sensor en tiempo real. Se puede acceder a esta herramienta desde el menú de herramientas del IDE de Arduino.
]

Iniciamos el ciclo con la toma de datos del sensor.

```c
void loop() {
  // Tell BME680 to begin measurement.
  unsigned long endTime = bme.beginReading();
  if (endTime == 0) {
    Serial.println(F("Failed to begin reading :("));
    return;
  }
  Serial.print(F("Reading started at "));
  Serial.print(millis());
  Serial.print(F(" and will finish at "));
  Serial.println(endTime);
  ...
}
```

La previa implementación con el uso de las funciones brindadas por la librería del sensor BME680 de Adafruit, permite que la lectura de los datos del sensor se realice de forma asíncrona, por lo que es necesario esperar a que la lectura de los datos del sensor finalice.

```c
void loop() {
  ...
   Serial.println(F("You can do other work during BME680 measurement."));
  delay(50); // This represents parallel work.
  // There's no need to delay() until millis() >= endTime: Flujobme.endReading()
  // takes care of that. It's okay for parallel work to take longer than
  // BME680's measurement time.
  ...
}
```

Desde un inicio podemos observar que uno de los principales problemas con la toma de datos del sensor es el tiempo de espera, que no es instantáneo y mucho menos constante, por lo cual resultará en una desviación de los 10 minutos cada vez que una lectura sea tomada por el sensor.

```c
void loop() {
  ...
  // Obtain measurement results from BME680. Note that this operation isn't
  // instantaneous even if milli() >= endTime due to I2C/SPI latency.
  if (!bme.endReading()) {
    Serial.println(F("Failed to complete reading :("));
    return;
  }
  Serial.print(F("Reading completed at "));
  Serial.println(millis());
  ...
}
```

Una vez obtenidos los resultados podemos imprimirlos a través del monitor serial.

```c
void loop() {
  ...
  Serial.print(F("Temperature = "));
  Serial.print(bme.temperature);
  Serial.println(F(" *C"));

  Serial.print(F("Pressure = "));
  Serial.print(bme.pressure / 100.0);
  Serial.println(F(" hPa"));

  Serial.print(F("Humidity = "));
  Serial.print(bme.humidity);
  Serial.println(F(" %"));

  Serial.print(F("Gas = "));
  Serial.print(bme.gas_resistance / 1000.0);
  Serial.println(F(" KOhms"));

  Serial.print(F("Approx. Altitude = "));
  Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA));
  Serial.println(F(" m"));

  Serial.println();
  delay(2000);
}
```

Las apropiadas conversiones han sido realizadas para la correcta visualización de los datos obtenidos del sensor, de igual forma el tiempo entre la toma de datos se ha fijado a dos (`2`) segundos, puesto que, por el momento solo requerimos de observar el correcto funcionamiento del sensor, y aún no realizamos el envió de los datos a ninguna plataforma.

A continuación, se ejemplifica la salida de los datos obtenidos del sensor en el monitor serial.

```
BME680 async test
Reading started at 0 and will finish at 1000
You can do other work during BME680 measurement.
Reading completed at 1000
Temperature = 24.00 *C
Pressure = 1013.25 hPa
Humidity = 50.00 %
Gas = 0.00 KOhms
Approx. Altitude = 0.00 m
```

Una vez que se han obtenido los datos del sensor de manera correcta, se procede a la integración de la pantalla OLED al prototipo, para ello se requiere de la librería Adafruit SSD1306, la cual se puede instalar desde el administrador de librerías de Arduino IDE.

#note[
    El siguiente código al igual que los previos se puede encontrar en la parte de los anexos, si bien se desarrolló basándose en los ejemplos de las librerías usadas por Adafruit, las correctas atribuciones deben de ser brindadas de acuerdo a la licencia BSD de Adafruit Industries del presente código.
]

`BME680_OLED/BME680_OLED.ino` #rf[@anexos_scripts-codigos_esp32-bme680_bm680-oled]

```c
/*************************************************************************
  This is a library for the BME680 gas, humidity, temperature & pressure sensor

  Designed specifically to work with the Adafruit BME680 Breakout
  ----> http://www.adafruit.com/products/3660

  These sensors use I2C or SPI to communicate, 2 or 4 pins are required
  to interface.

  Adafruit invests time and resources providing this open source code,
  please support Adafruit and open-source hardware by purchasing products
  from Adafruit!

  Written by Limor Fried & Kevin Townsend for Adafruit Industries.
  BSD license, all text above must be included in any redistribution
 *************************************************************************/
```

#df[
    *BSD License.* Es una licencia de software que permite a los usuarios utilizar, modificar y redistribuir el software sin restricciones, siempre y cuando se incluya el aviso de copyright y la licencia original.
]

A las previas librerías se le agregan las siguientes para el correcto funcionamiento de la pantalla OLED a través de la comunicación I2C.

```c
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
```

Se definen los pines de la pantalla OLED, y se crea el objeto de la clase `Adafruit_SSD1306`.

```c
#define BME_SCK 13
#define BME_MISO 12
#define BME_MOSI 11
#define BME_CS 10
```

Se declara el objeto de la clase `Adafruit_SSD1306`, el cual se encargará de la comunicación con la pantalla OLED.

```c
Adafruit_SSD1306 display = Adafruit_SSD1306(128, 32, &Wire);
```

De la función de `void setup()` anteriormente descrita, se agrega la inicialización de la pantalla OLED, al igual que se reduce la frecuencia de baudios a la que se trabajará con el fin de tener una conexión más estable.

```c
void setup() {
  Serial.begin(9600);
  Serial.println(F("BME680 test"));

  // by default, we'll generate the high voltage from the 3.3v line internally! (neat!)
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3C (for the 128x32)
  // init done
  display.display();
  delay(100);
  display.clearDisplay();
  display.display();
  display.setTextSize(1);
  display.setTextColor(WHITE);
  ...
}
```

Para la función de `void loop()` se agrega la impresión de los datos obtenidos del sensor en la pantalla OLED.

Primero definimos las coordenadas donde se imprimirá el texto en la pantalla OLED.

```c
void loop() {
  display.setCursor(0,0);
  display.clearDisplay();
  ...
}
```

Después se imprime el texto en la pantalla OLED.

```c
void loop() {
  ...
  display.print("Temperature: "); display.print(bme.temperature); display.println(" *C");
  display.print("Pressure: "); display.print(bme.pressure / 100.0); display.println(" hPa");
  display.print("Humidity: "); display.print(bme.humidity); display.println(" %");
  display.print("Gas: "); display.print(bme.gas_resistance / 1000.0); display.println(" KOhms");

  display.display();
  ...
}
```

Lo siguiente debería de poder observarse en la #rf[@OLED-example].

#figure(
    image("images/OLED-example.jpg", width: 60%),
    caption: [Pantalla OLED con datos del sensor BME680.],
    kind: image,
    supplement: [Figura],
)<OLED-example>

El prototipo listo para pruebas se puede observar en la #rf[@ESP32-BME680].

#figure(
    image("images/ESP32-BME680.jpg", width: 75%),
    caption: [Prototipo ESP32-BME680.],
    kind: image,
    supplement: [Figura],
)<ESP32-BME680>

Aún falta integrar el envío de los datos a la plataforma de PocketBase, pero lo integrado hasta el momento abarca completamente la parte del hardware necesario para el desarrollo del prototipo.

`BME680_OLED_PocketBase/BME680_OLED_PocketBase.ino` #rf[@anexos_scripts-codigos_esp32-bme680_bm680-oled-pocketbase]

Para la tercera etapa del desarrollo del código que se ejecutara en nuestro prototipo partimos a partir de la última versión del código, en el cual se agrega la librería de `WiFi`, la cual nos permitirá conectarnos a una red WiFi, la librería de `HTTPClient`, la cual nos permitirá realizar peticiones HTTP, `sys/time` para poder obtener la hora del sistema, así como `esp_sleep` para poder poner a dormir al ESP32.

```c
#include <WiFi.h>
#include <sys/time.h>
#include <HTTPClient.h>
#include <esp_sleep.h>
```

Se define el pin para el LED integrado en el ESP32, el cual nos servirá para indicar cuando se esté realizando la toma y envío de datos a PocketBase.

```c
#define LED 2
```

Se define el nombre de la red WiFi a la que nos conectaremos, así como la contraseña de la misma.

```c
const char* ssid = "SSID"; // Network SSID
const char* password = "password"; // Network password
```

#note[
    Es importante notar que cuando el código llegue a requerir de credenciales o llaves de acceso, la escritura de estas será evitada en el código mostrado.
]

Se declaran las variables del servidor NTP al que se le realizará la petición para obtener la hora del sistema.

```c
const char* ntpServer = "pool.ntp.org"; // NTP server
const long gmtOffset_sec = 0; // Offset from GMT
const int daylightOffset_sec = 0; // Offset from daylight savings time
```

El servidor NTP empleado es `pool.ntp.org`, el cual es un conjunto de servidores NTP distribuidos alrededor del mundo, los cuales se encargan de proveer la hora del sistema. Para más información sobre el servidor NTP `pool.ntp.org` se puede consultar la siguiente liga, https://www.pool.ntp.org/es/ .

#df[
    *NTP.* Network Time Protocol, es un protocolo de red para sincronizar los relojes de los sistemas informáticos a través de paquetes de datos enviados por la red.
]

Para mantener un buen desarrollo del código, se ahondará en crear descripciones para cada una de las funciones que se vayan a emplear, de esta forma se tendrá un mejor entendimiento del código, se facilitara su mantenimiento, y se podrán detectar errores más fácilmente.

Para la función de `void setup()` se agrega la inicialización de la conexión WiFi, así como la inicialización de la conexión con el servidor NTP.

```c
void setup() {
    ...
    Serial.println("Starting BME680...");

    Serial.println("Starting Wi-Fi..."); // Print a message to the serial monitor
    wifiConnected = connectToWifi(); // Obtain the Wi-Fi connection status

    if (wifiConnected) {
        Serial.println("Connection to Wi-Fi successful"); // Print a message to the serial monitor
        Serial.println("Starting time sync..."); // Print a message to the serial monitor
        configTime(gmtOffset_sec, daylightOffset_sec, ntpServer);
        while (!time(nullptr)) {
            delay(1000);
            Serial.println("Waiting for time sync...");
        }
        Serial.println("Time synced");
    } else {
        Serial.println("Connection to Wi-Fi failed"); // Print a message to the serial monitor
        Serial.println("Proceeding without Wi-Fi..."); // Print a message to the serial monitor
    }
    ...
}
```

Como se puede observar, se agrega la inicialización de la conexión WiFi, la cual se realiza mediante la función `connectToWifi();`, la cual se encarga de realizar la conexión a la red WiFi, y regresa un valor booleano indicando si la conexión fue exitosa o no.

La implementación anterior implica que sin la conexión WiFi no se podrá obtener la hora del sistema, por lo que se agrega un `if` para verificar si la conexión fue exitosa o no, y en caso de que no lo sea, se imprime un mensaje indicando que se procederá sin la conexión WiFi.

Igualmente se crea un aviso visual que nos permita visualizar el correcto funcionamiento del prototipo sin necesidad de tener una conexión serial al iniciar

```c
void setup() {
    ...
    // By default, we'll generate the high voltage from the 3.3v line internally! (neat!)
    display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // Initialize with the I2C addr 0x3C (for the 128x32)
    display.display();
    delay(100);
    display.clearDisplay();
    display.display();
    display.setTextSize(1);
    display.setTextColor(WHITE);
    ...
}
```

Se agrega un mensaje serial indicando que el `setup` ha finalizado.

```c
void setup() {
    ...
    Serial.println("Setup complete");
    ...
}
```

Para la ejecución y funcionamiento del prototipo se debe asegurar que los datos puedan continuar siendo tomados y mostrados aún sin una correcta conexión WiFi.

La implementación de este tipo de sistema redundante es más fácil de llevar a cabo a través del seccionamiento de código a través de funciones, de esta forma se puede tener un mejor control sobre el código, así como una mejor organización.

Para imprimir los datos al serial se crea la función `printToSerial();`, la cual se encarga de imprimir los datos obtenidos del sensor BME680 al serial.

```c
void printToSerial() { // Print to serial monitor
    Serial.print("Temperature = "); Serial.print(bme.temperature); Serial.println(" *C");
    Serial.print("Pressure = "); Serial.print(bme.pressure / (20 * 133.32239)); Serial.println(" inHg");
    Serial.print("Humidity = "); Serial.print(bme.humidity); Serial.println(" %");
    Serial.print("Gas = "); Serial.print(bme.gas_resistance / 1000.0); Serial.println(" KOhms");
}
```

Para imprimir los datos al display OLED se crea la función `printToDisplay();`, la cual se encarga de imprimir los datos obtenidos del sensor BME680 al display OLED.

```c
void printToDisplay() { // Print to OLED display
    display.setCursor(0,0);
    display.clearDisplay();
    display.print("Temperature: "); display.print(bme.temperature); display.println(" *C");
    display.print("Pressure: "); display.print(bme.pressure / (20 * 133.32239)); display.println(" inHg");
    display.print("Humidity: "); display.print(bme.humidity); display.println(" %");
    display.print("Gas: "); display.print(bme.gas_resistance / 1000.0); display.println(" KOhms");
    display.display();
}
```

Para checar la conexión WiFi se crea la función `connectoToWifi();`, la cual se encarga de verificar si la conexión WiFi sigue activa, en caso de que no lo sea, se intenta reconectar.

```c
bool connectToWifi() { // Connect to the Wi-Fi network
    Serial.print("Connecting to ");
    Serial.println(ssid);

    unsigned long startTime = millis(); // Get the current time

    WiFi.begin(ssid, password); // Connect to the network

    while (WiFi.status() != WL_CONNECTED) { // Wait for the Wi-Fi to connect
        delay(500);
        Serial.print(".");
        if (millis() - startTime > 60000) { // If it's been more than 1 minute
            Serial.println("");
            Serial.println("WiFi connection timed out");
            return false; // Return false
        }
    }

    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP()); // Print the local IP address

    return true; // Return true if connection was successful
}
```

Para obtener el tiempo actual UTC se crea la función `getUTCTime();`, la cual se encarga de obtener el tiempo actual UTC.

```c
String getUTCTime() { // Get UTC time from NTP server
    struct timeval tv;
    gettimeofday(&tv, nullptr);
    time_t now = tv.tv_sec;
    struct tm timeinfo;
    gmtime_r(&now, &timeinfo);
    char buffer[30];
    snprintf(buffer, sizeof(buffer), "%04d-%02d-%02d %02d:%02d:%02d.%03ldZ",
        timeinfo.tm_year + 1900, timeinfo.tm_mon + 1, timeinfo.tm_mday,
        timeinfo.tm_hour, timeinfo.tm_min, timeinfo.tm_sec,
        tv.tv_usec / 1000);
    return String(buffer);
}
```

La función para enviar los datos a PocketBase se crea como `sendToPocketBase();`, la cual se encarga de enviar los datos a PocketBase.

```c
void sendToPocketBase() { // Send data to PocketBase
    Serial.println("Sending data to PocketBase...");

    HTTPClient http;

    http.begin("https://custom.domain/api/collections/collection_name/records"); // Specify the URL
    http.addHeader("Content-Type", "application/json"); // Specify content-type header

    // Create the JSON payload
    String payload = "{\"time\": \"" + timeUTC + "\", \"temperature\": \"" + bme.temperature + "\", \"pressure\": \"" + bme.pressure / (20 * 133.32239) + "\", \"humidity\": \"" + bme.humidity + "\", \"gas\": \"" + bme.gas_resistance / 1000.0 + "\"}";

    int httpCode = http.POST(payload); // Send the request

    if(httpCode == 200) { // Check the returning code
        Serial.println("Data sent to PocketBase successfully");
    } else { // If the code is not 200, something went wrong
        Serial.print("Error sending data to PocketBase, returned code: ");
        Serial.println(httpCode);

        Serial.println("Restarting ESP32...");
        delay(1000); // Wait for the serial output to finish
        esp_restart(); // Restart the ESP32
    }

    http.end(); // Close connection
}
```

En la previa función se puede observar que no se ha logrado una correcta implementación en el uso de las variables para la conexión en nuestro caso el URL del servidor de PocketBase debería ser guardado en una variable global, sin embargo, por el momento se ha dejado de esta forma para poder realizar pruebas de envío de datos de la forma más inmediata posible. A causa de los siguientes principios.

#quote[
    *“First make it work.”* You are out of business if it doesn’t work. *“Then make it right.”* Refactor the code so that you and others can understand it and evolve it as needs change or are better understood. *“Then make it fast.”* Refactor the code for “needed” performance.
    
    @clean-architecture
]

#note[
    La modularización del código será una práctica recurrente en el desarrollo del prototipo, por lo que se recomienda tener un buen manejo de las funciones y su implementación.
]

Finalmente integramos las funciones en el `void loop()` para que se ejecuten de forma continua.

```c
void loop() {
    digitalWrite(LED, HIGH); // Turn the LED on (Note that LOW is the voltage level

    display.setCursor(0,0);
    display.clearDisplay();

    if (! bme.performReading()) {
        Serial.println("Failed to perform BME680 reading");
        return;
    }

    printToSerial(); // Print to serial monitor
    printToDisplay(); // Print to OLED display

    if (!wifiConnected) { // If Wi-Fi is not connected, wait 10 minutes and try again
        Serial.println("Retrying in 10 minutes...");
        digitalWrite(LED, LOW); // Turn the LED off by making the voltage HIGH
        delay(10 * 60 * 1000); // Wait 10 minutes

        esp_restart(); // Restart the ESP32
    } 

    timeUTC = getUTCTime(); // Get UTC time from NTP server

    sendToPocketBase(); // Send data to PocketBase

    Serial.println("Updating in 10 minutes...");
    digitalWrite(LED, LOW); // Turn the LED off by making the voltage HIGH
    
    delay(10 * 60 * 1000); // Wait 10 minutes
}
```

La estructura del código previo nos permite mantener visualmente la información ambiental, y al mismo tiempo reintentar una conexión a internet en caso de que no se haya logrado una conexión exitosa, además de enviar los datos a PocketBase y reiniciar el ESP32 cada 10 minutos.

// Pruebas
==== Pruebas <desarrollo_prototipo_esp32-bme680_pruebas>

Se llevará a cabo la realización de pruebas en casa para verificar el funcionamiento del prototipo.

Para iniciar debemos monitorear el puerto serial para verificar que el ESP32 se encuentre funcionando correctamente.

A continuación, se muestra el resultado de una correcta ejecución del código en el ESP32.

#figure(
    align(left)[
        ```
        Starting BME680...
        Starting Wi-Fi...
        Connecting to SSID
        Wi-Fi connected
        IP address: 192.168.1.XXX
        Connection to Wi-Fi successful
        Starting time sync...
        Time synced
        Setup complete
        Temperature = 28.11 *C
        Pressure = 29.72 inHg
        Humidity = 30.14 %
        Gas = 9.98 KOhms
        Sending data to PocketBase...
        Data sent to PocketBase successfully
        Updating in 10 minutes...
        ```
    ],
    caption: [Resultados de correcta ejecución en el ESP32.],
    kind: "reference",
    supplement: [Referencia],

)

Si se llevó a cabo una correcta ejecución del código, se debería poder observar el registro de los datos en PocketBase.

#figure(
    image("images/BME680-PocketBase.png", width: 100%),
    caption: [Datos de la colección BM680 (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<BME680-PocketBase>

#note[
    En ocasiones la lectura del tiempo del servidor NTP puede fallar, en tal caso la fecha mostrada pasara a ser `1970-01-01 00:00:00`, esto se debe a que el tiempo Unix comienza en esa fecha. Así mismo en estos casos es recomendable usar el tiempo de registro en la base de datos de PocketBase denotado como `created`.
]

Epoch Unix Timestamp es el número de segundos transcurridos desde el 1 de enero de 1970 a las 00:00:00 GMT. Para mayor información consultar https://www.unixtimestamp.com/ .

Con el correcto funcionamiento del prototipo, se dan por finalizadas las pruebas de la etapa de desarrollo.

=== Estación Meteorológica <desarrollo_prototipo_estacion_meteorologica>

Para el desarrollo del prototipo de la estación meteorológica se integran tres sistemas, las guías, manuales y componentes usados se detallarán a continuación.

#note[
    El presente desarrollo es desarrollado mediante el uso de la previa metodología, aplicada en el prototipo del ESP32 y el BME680, por lo que se recomienda tener una buena comprensión de la misma. Las librerías y tecnologías usadas pueden explorarse a fondo en su respectiva documentación, además de que el código utilizado se encuentra en los anexos, pero también recibirá actualizaciones en el siguiente repositorio: https://github.com/Osares10/Sparkfun-MicroMod-Weather_PocketBase
]

// Guías, Manuales y Tutoriales
==== Guías, Manuales y Tutoriales <desarrollo_prototipo_estacion_guia-manual-tutorial>

Para el desarrollo del prototipo las siguientes guías, manuales y tutoriales fueron de gran ayuda.

- https://learn.sparkfun.com/tutorials/micromod-esp32-processor-board-hookup-guide . @MicroMod-ESP32-Processor-Board-Hookup-Guide
- https://learn.sparkfun.com/tutorials/micromod-weather-carrier-board-hookup-guide . @MicroMod-ESP32-Weather-Carrier-Board-Hookup-Guide
- https://learn.sparkfun.com/tutorials/weather-meter-hookup-guide @Weather-Meter-Hookup-Guide
- https://www.lacrossetechnology.com/products/925-1418 @la-crosse-technology_925-1418

// Componentes
==== Componentes <desarrollo_prototipo_estacion_componentes>

Para el desarrollo del prototipo se usaron los siguientes componentes.

*SparkFun MicroMod ESP32 Processor.* El procesador principal, mantenernos en el entorno del ESP32 nos permitirá trabajar en el mismo ecosistema de desarrollo, además de que el ESP32 cuenta con conectividad Wi-Fi, lo que nos permitirá enviar los datos a PocketBase. @MicroMod-ESP32-Processor

#figure(
    image("images/MicroMod-ESP32.jpg", width: 50%),
    caption: [MicroMod ESP32 Processor (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<MicroMod-ESP32>

*SparkFun MicroMod Weather Carrier Board.* La placa portadora del procesador, esta placa nos permite conectar el procesador a los sensores y a la computadora. @Weather-Carrier-Board

#figure(
    image("images/MicroMod-Weather-Carrier-Board.jpg", width: 40%),
    caption: [MicroMod Weather Carrier Board (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<MicroMod-Weather-Carrier-Board>


*Weather Meter Kit.* El kit de sensores, este kit nos permite medir la velocidad del viento, la dirección del viento y la precipitación. @Weather-Meter-Kit

#figure(
    image("images/Weather-Meter-Kit.jpg", width: 40%),
    caption: [Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-photo>

*925-1418 Sensor Weather Shield.* Protector exterior diseñado para el sensor de temperatura, presión y humedad. @la-crosse-technology_925-1418

#figure(
    image("images/925-1418.jpg", width: 20%),
    caption: [925-1418 Sensor Weather Shield (_La Crosse Technology_).],
    kind: image,
    supplement: [Figura],
)<925-1418>

*MicroSD.* Tarjeta de memoria para el almacenamiento de los datos, esta tarjeta se conecta a la placa portadora.

#note[
    Se utilizarán múltiples tarjetas microSD a lo largo del proyecto, por lo que se procede a ilustrar una genérica. En las pruebas realizadas en una tarjeta de 8GB no se obtuvo más allá de un 5% de uso de la memoria de la tarjeta, por lo que se considera que no se tendrá problemas de almacenamiento.
]

#figure(
    image("images/microSD.jpg", width: 30%),
    caption: [MicroSD (_Kingston_).],
    kind: image,
    supplement: [Figura],
)

// Funcionalidades
==== Funcionalidades <desarrollo_prototipo_estacion_funcionalidades>

Entre las funcionalidades del prototipo que se implementaran se encuentran:

- Medición de los datos ambientales (temperatura, presión, humedad y punto de rocío) a través del BME280 que se encuentra en la placa portadora.

- Medición de UVA, UVB y UV Index a través del VEML6075 que se encuentra en la placa portadora.

- Medición de la velocidad del viento, la dirección del viento y la precipitación a través del Weather Meter Kit.

- Envío de los datos a PocketBase a través de Wi-Fi.

- Almacenamiento de los datos en microSD en estación como copia de seguridad de la información en caso de que no se pueda enviar a PocketBase, y permitiendo así que pueda operar aún sin una conexión a internet.

#note[
    La SparkFun MicroMod Weather Carrier Board cuenta también con el sensor `AS3935` Lightning Detector, sin embargo, este no se implementará en el prototipo por el momento.
]

Se espera que a través de las presentes funcionalidades se pueda obtener una buena cantidad de datos ambientales, los cuales serán de gran utilidad para el análisis de la calidad del aire.

Al momento de realización se planea realizar una prueba de aproximadamente 15 días, para así poder comparar los datos obtenidos y poder determinar si el prototipo es funcional.

Los datos a recolectar serán los siguientes:

- Temperatura.
- Presión.
- Humedad.
- Punto de rocío.
- UVA.
- UVB.
- UV Index.
- Velocidad del viento.
- Dirección del viento.
- Precipitación.

#pagebreak()

// Pinouts
==== Pinouts <desarrollo_prototipo_esp32-bme680_pinouts>

A continuación, se listan los pinouts utilizados para el desarrollo del prototipo.

*MicroMod ESP32.* Para la comunicación e integración de los sensores se utilizó un MicroMod ESP32, el cual se puede observar en el siguiente #rf[@MicroModESP32-pinout].

#figure(
    image("images/MicroModESP32-pinout.png", width: 100%),
    caption: [Pinout ESP32 (_SparkFun_).],
    kind: "schematic",
    supplement: [Esquemático],
)<MicroModESP32-pinout>

#df[
    *GPIO.* General Purpose Input/Output, es un pin que puede ser configurado para ser de entrada o de salida, y puede ser utilizado para múltiples propósitos.
]

*MicroMod Weather Meter Carrier Board.* Para la conexión de los sensores se utilizó una MicroMod Weather Meter Carrier Board, la cual se puede observar en el siguiente #rf[@MicroModWeatherMeterCarrierBoard-pinout].

#figure(
    image("images/WeatherCarrier-schematic.png", width: 80%),
    caption: [Weather Carrier Board (_SparkFun_).],
    kind: "schematic",
    supplement: [Esquemático],
)<MicroModWeatherMeterCarrierBoard-pinout>

*Weather Meter Kit (Veleta de viento).* Para la conexión de la veleta de viento se utilizó un Weather Meter Kit, el cual se puede observar en el siguiente #rf[@windvane-pinout].

#figure(
    image("images/windvane-switches.jpg", width: 30%),
    caption: [Weather Meter Kit Anemómetro (_SparkFun_).],
    kind: "schematic",
    supplement: [Esquemático],
)<windvane-pinout>

#note[
    Se puede observar que en el esquemático de la veleta de viento se integra el del anemómetro, esto se debe a que ambos comparten el mismo conector `RJ11`, por lo que se debe de conectar el cableado de ambos sensores al mismo conector. En el cual el anemómetro solo utilizara dos de los cuatro pines, mientras que la veleta de viento utilizara los otros dos.
]

*Weather Meter Kit (Pluviómetro).* Para la conexión del pluviómetro se utilizó un Weather Meter Kit, el cual se puede observar en el siguiente #rf[@rain-gauge-pinout].

#figure(
    image("images/rain-gauge-schematic.png", width: 35%),
    caption: [Weather Meter Kit Pluviómetro (_SparkFun_).],
    kind: "schematic",
    supplement: [Esquemático],
)<rain-gauge-pinout>

#pagebreak()

// Ensamblaje
==== Ensamblaje <desarrollo_prototipo_estacion_ensamblaje>

La primera parte corresponde al armado del Kit de sensores, para ello se siguen las instrucciones de la guía de ensamblaje del kit de sensores. @Weather-Meter-Hookup-Guide

Para el ensamblaje se requiere de las siguientes herramientas:

- Weather Meter Kit.
- Destornillador Phillips.
- Destornillador plano.

*Componentes.* Cuando el paquete es recibido, se debe contar con los siguientes componentes.

#figure(
    image("images/weather-meter-kit-components.jpg", width: 100%),
    caption: [Contenido del Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-components>

- Dos (`2`) tubos metálicos.
- Tres (`3`) sensores:
    - Pluviómetro.
    - Anemómetro.
    - Veleta.
- Dos (`2`) abrazaderas.
- Un (`1`) brazo de montaje central.
- Un (`1`) brazo de montaje lateral.
- Una (`1`) bolsa de tornillos y tuercas.
- Un (`1`) paquete de bridas de plástico.

Todos los sensores son pasivos por lo que requieren de una fuente de alimentación externa, en este caso se usará la placa portadora, por lo que se debe conectar el cable de comunicación a la placa, por lo cual cada sensor externo cuenta con un conector RJ-11.

*Pluviómetro.* El pluviómetro es el sensor que mide la precipitación, este sensor cuenta con mecanismo que mide la cantidad de agua que cae en el recipiente.

#figure(
    image("images/raingauge.jpg", width: 90%),
    caption: [Pluviómetro del Weather Meter Kit (_SparkFun_).],
    supplement: [Figura],
)<Weather-Meter-Kit-rain-gauge>

#df[
    *RJ11.* Registered Jack 11, es un conector telefónico de cuatro o seis pines, utilizado para conectar teléfonos y otros dispositivos de telecomunicaciones. En este caso se utiliza para conectar los sensores al microcontrolador.
]

#pagebreak()

#note[
    El modelo utilizado cuenta con un nivel de burbuja para asegurar que el pluviómetro se encuentre nivelado.
]

#figure(
    image("images/raingauge-level.jpg", width: 50%),
    caption: [Nivel de burbuja del pluviómetro del Weather Meter Kit (_SparkFun_).],
    supplement: [Figura],
)<Weather-Meter-Kit-rain-gauge-level>

El sensor es un colector de cubo basculante de vaciado automático. Esto significa que por cada `0.011in` (`0.2794mm`) de lluvia que cae en el sensor, la cubeta se inclinará, descargando el agua y cerrando un contacto momentáneo.

El cierre del interruptor se puede medir usando pines de interrupción o un contador digital. Los conductores centrales del conector RJ-11 están conectados al interruptor del medidor.

#pagebreak()

*Anemómetro.* El anemómetro es el sensor que mide la velocidad del viento, este sensor cuenta con tres (`3`) copas que giran con el viento.

#figure(
    image("images/anemometer.jpg", width: 90%),
    caption: [Anemómetro del Weather Meter Kit (_SparkFun_).],
    supplement: [Figura],
)<Weather-Meter-Kit-anemometer>

El viento mueve las copas del anemómetro, que a su vez hacen girar un imán cerrado. El imán cierra un interruptor de láminas en cada rotación, lo que se refleja en la salida. Se puede medir esto en los dos conductores internos del conector RJ-11 (pines `2` y `3`), usando un contador digital o pines de interrupción en su microcontrolador. Para convertir esto en una velocidad de viento funcional, use la conversión de `1.492mph` `= 1` cierre de interruptor/segundo. Para aquellos en tierra métrica, esto es `2.4km/h`.

#pagebreak()

*Veleta de viento.* La veleta indica la dirección en la que sopla el viento.

#figure(
    image("images/windvane.jpg", width: 80%),
    caption: [Veleta de viento del Weather Meter Kit (_SparkFun_).],
    supplement: [Figura],
)<Weather-Meter-Kit-wind-vane>

Si bien podría pensarse que este sensor es algo simple es el más complejo, A continuación, se describe su funcionamiento, recordar el #rf[@windvane-pinout]

Dentro de la veleta se encuentran ocho (`8`) interruptores, cada uno con una resistencia única.

A medida que la veleta gira, un imán cierra los interruptores de lengüeta y puede cerrar dos a la vez debido a su proximidad entre sí. Con el uso de una resistencia externa, se puede crear un divisor de voltaje. Medir la salida de voltaje con un convertidor de analógico a digital en su microcontrolador permite determinar la dirección a la que apunta la veleta.

Como la salida de tensión dependerá del valor de la resistencia externa utilizada, no existe una función de conversión común.

#note[
    La dependencia de la salida de las resistencias culminará en el uso de códigos de prueba para calibrar a preferencia el sensor.
]

Dado que los valores emitidos por la veleta se basan en grados, en teoría, cualquier valor puede representar cualquier dirección. Sin embargo, se recomienda que el valor en el grado `0` represente el norte para facilitar su uso. También hay indicadores de dirección muy pequeños y apenas visibles en los cuatro lados de la veleta. Al elegir diferentes valores para indicar direcciones, asegurar de marcarlos en consecuencia. Al instalar y colocar el medidor meteorológico, se debe asegurar de que las marcas de dirección estén apuntando en la orientación correcta.

#note[
    Tener en cuenta que la veleta "apunta" en la dirección desde la que sopla el viento.
]

#pagebreak()

*Armazón.*

Para comenzar, es necesario unir los dos tubos de metal y deslizarlos juntos.

#figure(
    image("images/assemble-tubes.jpg", width: 60%),
    caption: [Unión de tubos Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-tubes>

A continuación, se coloca el brazo central en la parte superior de los tubos. Asegurando la alineación con la muesca en el tubo superior.

#figure(
    image("images/assemble-center-arm.jpg", width: 60%),
    caption: [Unión del brazo central Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-center-arm>

Se usa un tornillo para asegurar el brazo central en su lugar.

#figure(
    image("images/assemble-center-arm-screw.jpg", width: 65%),
    caption: [Unión del brazo central con tornillo Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-center-arm-screw>

Siguiente se monta el anemómetro en el brazo central.

El anemómetro cuenta con una protuberancia que coincide en las muescas del brazo central. Esto ayuda a asegurar que el anemómetro esté conectado correctamente y solo permite que se monte en una dirección.

#figure(
    image("images/assemble-anemometer.jpg", width: 65%),
    caption: [Unión del anemómetro Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-anemometer>

Se desliza el anemómetro en el brazo central hasta que se atore en su lugar.

#figure(
    image("images/assemble-anemometer-slide.jpg", width: 70%),
    caption: [Unión del anemómetro Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-anemometer-slide>

El anemómetro es fijado con la ayuda de un tornillo.

#figure(
    image("images/assemble-anemometer-screw.jpg", width: 70%),
    caption: [Unión del anemómetro con tornillo Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-anemometer-screw>

Para unir la veleta de viento, se sigue el mismo procedimiento que para el anemómetro. Primero se alinea la protuberancia de la veleta con la muesca del brazo central y después se atora en su lugar.

#figure(
    image("images/assemble-wind-vane.jpg", width: 65%),
    caption: [Unión de la veleta de viento Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-wind-vane>

Se asegura la veleta de viento con un tornillo.

#figure(
    image("images/assemble-wind-vane-screw.jpg", width: 65%),
    caption: [Unión de la veleta de viento con tornillo Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-wind-vane-screw>

Para conectar el pluviómetro se necesita el brazo lateral. Esto para mantener el pluviómetro alejado de los otros sensores para garantizar que pueda obtener una medición precisa. Si el pluviómetro está demasiado cerca de los otros sensores, el agua de lluvia puede salpicar en el pluviómetro desde el anemómetro o la veleta de viento.

Se fija el brazo lateral a los tubos de metal.

#figure(
    image("images/assemble-side-arm.jpg", width: 55%),
    caption: [Unión del brazo lateral Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-side-arm>

El pluviómetro cuenta también con muescas para asegurar que se monte de forma correcta.

#figure(
    image("images/assemble-rain-gauge.jpg", width: 55%),
    caption: [Unión del pluviómetro Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-rain-gauge>

Antes de colocar se debe de alinear para después asegurarlo.

#figure(
    image("images/assemble-rain-gauge-align.jpg", width: 70%),
    caption: [Unión del pluviómetro Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-rain-gauge-align>

Se asegura el pluviómetro con un tornillo. Manteniéndolo fijo y alineado al suelo para su mejor funcionamiento.

#figure(
    image("images/assemble-rain-gauge-screw.jpg", width: 70%),
    caption: [Unión del pluviómetro con tornillo Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-rain-gauge-screw>

*Gestión de cables.*

Para la gestión de cables se utilizan abrazaderas de cables y clips integrados en el armazón.

Se desenredan los cables del anemómetro y la veleta de viento. Se sujetan mediante el uso de los clips en la parte inferior del brazo central.

#figure(
    image("images/assemble-cable-management.jpg", width: 55%),
    caption: [Gestión de cables Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-cable-management>

Una vez sujetados los cables se conecta el cable más corto que sale del anemómetro a la veleta de viento.

#figure(
    image("images/assemble-cable-management-connect.jpg", width: 55%),
    caption: [Conexión de anemómetro a veleta Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-cable-management-connect>

Para asegurar los cables sueltos se utilizan bridas de cables.

#figure(
    image("images/assemble-cable-management-zip-tie.jpg", width: 70%),
    caption: [Sujeción de cables Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-cable-management-zip-tie>

De esta forma queda terminado el armazón del Weather Meter Kit.

#figure(
    image("images/assemble-finished.jpg", width: 70%),
    caption: [Armazón terminado Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-finished>

Cuando se desea trabajar con equipo extra como en nuestro caso, se puede utilizar una abrazadera para darle más estabilidad al armazón.

#figure(
    image("images/assemble-clamp.jpg", width: 80%),
    caption: [Abrazadera Weather Meter Kit (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)<Weather-Meter-Kit-assemble-clamp>

#note[
    El procedimiento de la integración del protector de sensores queda pendiente, puesto que la unidad fue modificada para permitir su integración con los sensores utilizados.
]

#pagebreak()

// Diagrama de Flujo
==== Diagrama de Flujo <desarrollo_prototipo_estacion_diagrama-flujo>

A continuación, se muestra el siguiente diagrama de flujo, el cual se puede observar en el siguiente #rf[@station-diagram] hecho con el lenguaje de programación D2 @d2 .

#figure(
    image("diagrams/station.png", width: 60%),
    caption: [Flujo del prototipo de estación.],
    kind: "diagram",
    supplement: [Diagrama],
)<station-diagram>

// Código
==== Código <desarrollo_prototipo_estacion_codigo>

Se inicia el desarrollo con un simple código para el parpadeo del LED integrado, con el fin de verificar que el entorno de desarrollo este correctamente configurado.

#note[
    Los siguientes códigos serán detallados paso a paso, pero el código en su totalidad puede ser consultado en la #rf[@anexos_scrips-codigos_estacion-meteorologica]
]

`Blink/Blink.ino` #rf[@anexos_scrips-codigos_estacion-meteorologica_blink]

Se define el pin del LED integrado como salida.

```c
// Blink a LED on the MicroMod Weather (ESP32) board

int ledPin = 2; // LED is connected to GPIO2

void setup() {
  pinMode(ledPin, OUTPUT); // Set GPIO2 to output mode
  Serial.begin(115200); // Initialize serial port
}

void loop() {
  digitalWrite(ledPin, HIGH); // Turn LED on
  delay(1000); // Wait for 1000 millisecond(s)
  Serial.println("The LED is on."); // Print a message 
  digitalWrite(ledPin, LOW); // Turn LED off
  delay(1000); // Wait for 1000 millisecond(s)
}
```

El primer sensor a integrar será el `BME280` por lo que la primera librería a integrar será `SparkFunBME280.h`.

`BME280/BME280.ino` #rf[@anexos_scrips-codigos_estacion-meteorologica_bme280]

Se incluye la librería `SparkFunBME280.h` y se define el pin del LED integrado como salida.

Se definen las librerías a usar, así como el objeto `bme280Sensor` para el sensor `BME280` y el valor `RealFloatPressure` para la presión atmosférica.

#pagebreak()

```c
#include <Wire.h>
#include "SparkFunBME280.h"

BME280 bme280Sensor; // Create BME280 object

float RealFloatPressure;
```

Se continúa con el método `setup()` en el cual se inicializa el puerto serial, se inicia la comunicación con el sensor `BME280` y se imprime un mensaje de inicio.

Se trabajará a través del puerto serial a una velocidad de `115200` baudios, se inicia la comunicación con el sensor `BME280` empleando el medio de comunicación I2C previamente empleado y se imprime un mensaje de inicio.

Se define el pin del LED integrado como salida.

Se evalúa si el sensor `BME280` responde, en caso de no responder se imprime un mensaje de error y se congela el programa.

```c
void setup() {
    Serial.begin(115200); // Initialize serial port
    while (!Serial);  // Wait for user to open serial monitor

    Serial.println("MicroMod Weather Carrier Board - BME280 Example");
    Serial.println();

    Wire.begin(); // Join I2C bus

    bme280Sensor.setReferencePressure(101500); // Set sea level pressure to 101325 Pa (default)

    if (bme280Sensor.begin() == false) { // Connect to BME280
        Serial.println("BME280 did not respond.");
        while(1); // Freeze
    }

    pinMode(LED_BUILTIN, OUTPUT);
}
```

Se continúa con el método `loop()` en el cual se obtienen los valores de temperatura, humedad y presión atmosférica, se imprimen los valores obtenidos y se congela el programa por `1000` milisegundos.

```c
void loop() {
  digitalWrite(LED_BUILTIN, HIGH);
  Serial.print("Temperature: ");
  Serial.println(bme280Sensor.readTempC(), 2);
  Serial.print("Humidity: ");
  Serial.println(bme280Sensor.readFloatHumidity(), 0);
  Serial.print("Pressure: ");

  RealFloatPressure = bme280Sensor.readFloatPressure() / (20 * 133.32239);
  Serial.println(RealFloatPressure, 2);

  Serial.print("Altitude: ");
  Serial.println(bme280Sensor.readFloatAltitudeMeters(), 1);
  Serial.print("Dewpoint: ");
  Serial.println(bme280Sensor.dewPointC(), 2);

  digitalWrite(LED_BUILTIN, LOW);
  delay(1000);
}
```

El siguiente sensor a integrar será el `VEML6075` por lo que la siguiente librería a integrar será `SparkFun_VEML6075_Arduino_Library.h`.

`VEML6075/VEML6075.ino` #rf[@anexos_scrips-codigos_estacion-meteorologica_veml6075]

Se incluye la librería `SparkFun_VEML6075_Arduino_Library.h` y se declara el objeto `veml6075` para el sensor `VEML6075`.

```c
#include <SparkFun_VEML6075_Arduino_Library.h>

VEML6075 veml6075; // Create a VEML6075 object
```

Se continúa con el método `setup()` en el cual se inicializa el puerto serial, se inicia la comunicación con el sensor `VEML6075` y se imprime un mensaje de inicio.

Se trabajará a través del puerto serial a una velocidad de `115200` baudios, se inicia la comunicación con el sensor `VEML6075` empleando el medio de comunicación I2C previamente empleado y se imprime un mensaje de inicio.

Se define el pin del LED integrado como salida. Se evalúa si el sensor `VEML6075` responde, en caso de no responder se imprime un mensaje de error y se congela el programa.

```c
void setup() {
  Serial.begin(115200);
  while(!Serial); // Wait for user to open serial monitor
  
  Serial.println("MicroMod Weather Carrier Board - VEML6075 Example");

  Wire.begin(); // Join I2C bus

  if (veml6075.begin() == false) {
    Serial.println("VEML6075 did not respond."); // If the sensor does not respond, print an error message
    while(1); // Freeze
  }

  pinMode(LED_BUILTIN, OUTPUT);
  Serial.println("UVA, UVB, UV Index"); // Print the header for the data
  Serial.println();

}
```

Se continúa con el método `loop()` en el cual se obtienen los valores de radiación UV, se imprimen los valores obtenidos y se hacer esperar a el programa por `1000` milisegundos.

```c
void loop() {
    digitalWrite(LED_BUILTIN, HIGH);
    // Print the UVA, UVB, and UV Index values
    Serial.println("UVA: " + String(veml6075.uva())); 
    Serial.println("UVB: " + String(veml6075.uvb()));
    Serial.println("UV Index: " + String(veml6075.index()));

    digitalWrite(LED_BUILTIN, LOW);
    delay(1000); // Wait 1 second
}
```

Una vez con los suficientes sensores integrados se procede a realizar la integración de los sensores en un código que integre todos los sensores.

`Station/Station.ino` #rf[@anexos_scrips-codigos_estacion-meteorologica_station]

Se incluyen las librerías `SparkFun_BME280_Arduino_Library.h` y `SparkFun_VEML6075_Arduino_Library.h` y se declaran los objetos `bme280Sensor` y `veml6075` para los sensores `BME280` y `VEML6075` respectivamente.

```c
#include <Wire.h> 
#include "SparkFunBME280.h"
#include <SparkFun_VEML6075_Arduino_Library.h>

BME280 bme280; // Instance of the BME280 class
VEML6075 veml6075; // Create a VEML6075 object
```

Las variables para almacenar los valores de temperatura, humedad, presión atmosférica, radiación UV, velocidad del viento, dirección del viento y lluvia se declaran como variables globales.

```c
int windDirectionSensor = A1; // Analog pin for wind direction
int windSpeedSensor = D0; // Digital I/O pin for wind speed
int rainSensor = D1; // Digital I/O pin for rain fall
```

Se definen las variables para las operaciones de tiempo y para el cálculo de la dirección y velocidad del viento.

```c
const int duration = 1; // Duration of the report in minutes

int remainingMinutes, remainingSeconds; // Variables to store the remaining minutes and seconds
```

Se definen las variables para los cálculos de la dirección y velocidad del viento.

```c
volatile int windSpeedCount = 0; // Variable to store the number of wind pulses
volatile int rainCount = 0; // Variable to store the number of rain tips

float xSum = 0, ySum = 0; // Variables to store the sum of the x and y values
float x, y, theta, averageWindDirection, averageWindSpeed; // Variables to store the x, y, theta, and average wind direction and speed
```

Se definen las variables para almacenar los valores de temperatura, humedad, presión atmosférica, radiación UV, velocidad del viento, dirección del viento y lluvia en un `struct`.

```c
struct WeatherData { // Struct to store the weather data
    String time;
    float temperature;
    float humidity;
    float dewpoint;
    float pressure;
    float rainFall;
    float windSpeed;
    float windDirection;
    float uva;
    float uvb;
    float uvindex;
};
WeatherData weather;
```

Se definen las variables para almacenar los valores de velocidad y dirección del viento en un `struct`.

```c
struct WindData { // Struct to store the wind data
    float speed;
    float direction;
    boolean reading;
};
WindData wind[duration * 6];
```

Se procede a crear funciones de los principales componentes que integran el funcionamiento de la estación para de esta forma realizar un código más legible y ordenado.

#pagebreak()

Se crean interrupciones para los sensores de velocidad del viento y lluvia.

```c
void rainIRQ()
{
    rainCount++;
    // Serial.println("Rain clicked");
}

// Function is called when the magnet in the anemometer is activated
void windSpeedIRQ()
{
    windSpeedCount++;
    // Serial.println("Wind clicked");
}
```

Se crea una función para obtener la dirección del viento.

```c
int getWindDirection() {
    unsigned int reading;
    reading = analogRead(windDirectionSensor); // Read the analog value from the wind direction sensor

    if (  10 < reading && reading <=  150) return (288);
    if ( 150 < reading && reading <=  250) return (264);
    if ( 250 < reading && reading <=  400) return (336);
    if ( 400 < reading && reading <=  600) return (312);
    if ( 650 < reading && reading <=  850) return ( 24);
    if ( 850 < reading && reading <= 1050) return (  0);
    if (1300 < reading && reading <= 1500) return (216);
    if (1500 < reading && reading <= 1700) return (240);
    if (2000 < reading && reading <= 2200) return ( 72);
    if (2200 < reading && reading <= 2400) return ( 48);
    if (2400 < reading && reading <= 2600) return (168);
    if (2800 < reading && reading <= 3000) return (192);
    if (3000 < reading && reading <= 3200) return (120);
    if (3300 < reading && reading <= 3500) return (144);
    if (3700 < reading && reading <= 3900) return ( 96);
    return (-1);
}
```

#note[
    La función previa se obtuvo a partir de un análisis, puesto que la tabla de valores integrada en el sensor de dirección del viento no es la misma que la que se muestra en la hoja de datos del sensor.
]

A continuación, se muestra dicha tabla de valores para su comparación.

#figure(
    image("images/windvane-table.png", width: 50%),
    caption: [Tabla de valores del sensor de dirección del viento (_SparkFun_).],
    kind: image,
    supplement: [Figura],
)

Se crea una función para calcular la dirección y velocidad del viento.

```c
void getAverageWind(float& averageWindDirection, float& averageWindSpeed) {
    for (int i = 0; i < (duration * 6); i++) {
        theta = radians(wind[i].direction); // convert angle to radians
        x = wind[i].speed * cos(theta);
        y = wind[i].speed * sin(theta);
        xSum += x;
        ySum += y;
    }
    averageWindDirection = degrees(atan2(ySum / (duration * 6), xSum / (duration * 6))); // convert radians to degrees
    if (averageWindDirection < 0) averageWindDirection += 360; // convert negative angles to positive
    averageWindSpeed = sqrt(pow(xSum / (duration * 6), 2) + pow(ySum / (duration * 6), 2)); // calculate average speed

    xSum = 0;
    ySum = 0;
}
```

Se crea una función para imprimir los valores de los sensores.

```c
void printWeather() {
    Serial.print("Temperature: ");
    Serial.print(weather.temperature, 2); // Temperature in degrees Celsius
    Serial.print("   Humidity: ");
    Serial.print(weather.humidity, 2); // Humidity in percent
    Serial.print("   Dewpoint: ");
    Serial.print(weather.dewpoint, 2); // Dew point in degrees Celsius
    Serial.print("   Pressure: ");
    Serial.print(weather.pressure, 2); // Pressure in inches of mercury
    Serial.print("   Wind Speed: ");
    Serial.print(weather.windSpeed, 2); // Wind speed in knots
    Serial.print("   Wind Direction: ");
    Serial.print(weather.windDirection, 2); // Average wind direction in degrees
    Serial.print("   Rain Fall: ");
    Serial.print(weather.rainFall, 2); // Rain fall in inches/hour
    Serial.print("   UVA: ");
    Serial.print(weather.uva); // UVA value
    Serial.print("   UVB: ");
    Serial.print(weather.uvb); // UVB value
    Serial.print("   UV Index: ");
    Serial.println(weather.uvindex); // UV index
}
```

La función `loop()` se encarga de tomar las mediciones de los sensores y de imprimir los valores en el monitor serial.

```c
void loop() {
    digitalWrite(LED_BUILTIN, HIGH); // Turn on the LED
    rainCount = 0; // Reset the rain count
    for (int i = 0; i < (duration * 6); i++) { // Reset the wind direction array
            wind[i].reading = false;
            wind[i].direction = 0;
            wind[i].speed = 0;
    }
    for (int i = 0; i < (duration * 6); i++) { // Loop for the duration of the report, taking measurements every 10 seconds
        Serial.print("Taking wind measurements, this process will be finished in: "); // Print a message to the serial monitor to let the user know the program is working
        remainingMinutes = duration - ((i / 6) + !!(i % 6));
        remainingSeconds = 60 - ((i % 6) * 10);
        Serial.print(remainingMinutes);
        Serial.print(":");
        if (remainingSeconds == 60) {
            Serial.println("00");
        } else {
            Serial.println(remainingSeconds);
        }

        windSpeedCount = 0; // Reset the wind speed count
        delay(10 * 1000); // Wait for 10 seconds
        wind[i].speed = (windSpeedCount * 1.2959) / (10); // Calculate the wind speed
        wind[i].direction = getWindDirection(); // Calculate the wind direction
        wind[i].reading = true; // Set the reading flag to true
    }
    weather.rainFall = (rainCount * 0.011 * 60) / (duration); // Calculate the rain fall in inches/hour
    getAverageWind(averageWindDirection, averageWindSpeed); // Get the average wind direction and speed
    weather.windDirection = averageWindDirection; // Set the average wind direction to the weather data
    weather.windSpeed = averageWindSpeed; // Set the average wind speed to the weather data
    weather.temperature = bme280.readTempC(); // Get the temperature in degrees Celsius
    weather.humidity = bme280.readFloatHumidity(); // Get the humidity in percent
    weather.dewpoint = bme280.dewPointC(); // Get the dew point in degrees Celsius
    weather.pressure = bme280.readFloatPressure() / (20 * 133.32239); // Convert the pressure from Pascals to inches of mercury

    weather.uva = veml6075.uva(); // Get the UVA value
    weather.uvb = veml6075.uvb(); // Get the current time in UTC
    weather.uvindex = veml6075.index(); // Get the UV index

    printWeather(); // Print the weather data to the serial monitor

    digitalWrite(LED_BUILTIN, LOW); // Turn off the LED
}
```

#note[
    A partir de este punto los siguientes códigos se centrarán en la integración de las dos funciones faltantes omitiendo repetir los de la operación de la estación.
]


Una vez que la estación meteorológica y el servidor se encuentran funcionando de manera independiente, se procede a realizar la integración de ambos sistemas. Para la parte de la estación meteorológica se presenta A continuación, el código que se encarga de enviar los datos al servidor.

El presente código se puede evaluar en su totalidad en el anexo `Station_PocketBase/Station_PocketBase.ino` #rf[@anexos_scrips-codigos_estacion-meteorologica_station-pocketbase]

#note[
    Si bien la estación empleara el uso de funciones para la conexión a WiFi, así como la obtención del presente tiempo UTC, ambos códigos ya se han tratado con anterioridad por lo que se omitirá su explicación.
]

La función a implementar será la encargada de enviar los datos al servidor, para ello se empleará la librería `HTTPClient.h` la cual permite realizar peticiones HTTP. La función lleva el nombre de `sendWeatherDataToPocketBase()` y se presenta a continuación.

```c
void sendWeatherDataToPocketBase() {
    Serial.println("Sending weather data to PocketBase...");

    HTTPClient http;

    // Set the PocketBase endpoint URL
    http.begin("https://custom.domain/api/collections/collection_name/records");

    // Set the HTTP headers
    http.addHeader("Content-Type", "application/json");

    // Create the JSON payload
    String payload = "{\"time\":\"" + weather.time +
                    "\",\"temperature\":" + String(weather.temperature) +
                    ",\"humidity\":" + String(weather.humidity) +
                    ",\"dewpoint\":" + String(weather.dewpoint) +
                    ",\"pressure\":" + String(weather.pressure) +
                    ",\"rainFall\":" + String(weather.rainFall) +
                    ",\"windSpeed\":" + String(weather.windSpeed) +
                    ",\"windDirection\":" + String(weather.windDirection) +
                    ",\"uva\":" + String(weather.uva) +
                    ",\"uvb\":" + String(weather.uvb) + 
                    ",\"uvindex\":" + String(weather.uvindex) + "}";

    // Send the POST request with the payload
    int httpCode = http.POST(payload);

    // Check if the request was successful
    if(httpCode == 200) {
        Serial.println("Data sent to PocketBase successfully");
    } else {
        Serial.println("Error sending data to PocketBase");
        Serial.print("HTTP code: ");
        Serial.println(httpCode);
    }

    // Free resources
    http.end();
}
```

Se puede notar que el proceso consta en formar un payload en formato JSON con los datos de la estación meteorológica, para posteriormente realizar una petición POST al servidor. En caso de que la petición sea exitosa, se imprimirá un mensaje en el monitor serial, en caso contrario se imprimirá un mensaje de error junto con el código HTTP de la petición.

#df[
    *JSON.* Es un formato de texto sencillo para el intercambio de datos. Es fácil de leer y escribir para los humanos y fácil de analizar y generar para las máquinas.
]

Se procede a implementar el código que implementara la copia de seguridad de la información a la microSD. Para eso se creará un nuevo programa a cargar al ESP32, el cual llevará el nombre de `Station_PocketBase_SD/Station_PocketBase_SD.ino` #rf[@anexos_scrips-codigos_estacion-meteorologica_station-pocketbase-sd]

`Station_PocketBase_SD/Station_PocketBase_SD.ino` #rf[@anexos_scrips-codigos_estacion-meteorologica_station-pocketbase-sd]

La función a implementar llevará el nombre de `writeDataToSDCard()` y se presenta a continuación.

```c
void writeDataToSDCard() { // Write the weather data to the SD card
    Serial.println("Writing weather data to SD card...");

    for (int i = 0; i < 3; i++) { // Try opening the file up to 3 times
        dataFile = SD.open("/data.csv", FILE_APPEND); // Open the data file

        if (dataFile) { // If the file opened successfully, write the data
            dataFile.print(weather.time);
            dataFile.print(",");
            dataFile.print(weather.temperature);
            dataFile.print(",");
            dataFile.print(weather.humidity);
            dataFile.print(",");
            dataFile.print(weather.dewpoint);
            dataFile.print(",");
            dataFile.print(weather.pressure);
            dataFile.print(",");
            dataFile.print(weather.rainFall);
            dataFile.print(",");
            dataFile.print(weather.windSpeed);
            dataFile.print(",");
            dataFile.print(weather.windDirection);
            dataFile.print(",");
            dataFile.print(weather.uva);
            dataFile.print(",");
            dataFile.print(weather.uvb);
            dataFile.print(",");
            dataFile.println(weather.uvindex);
            dataFile.close(); // Close the file
            Serial.println("Data written to SD card successfully");
            return; // Exit the function after successful write
        } else { // If the file did not open successfully, print an error
            Serial.println("Error opening file on SD card. Retrying...");
            delay(500); // Wait for half a second before retrying
        }
    }

    // If all attempts to open the file have failed, print an error message and restart the ESP32
    Serial.println("Failed to write data to SD card after multiple attempts.");
    Serial.println("Restarting ESP32...");

    delay(1000); // Wait for the serial output to finish
    esp_restart(); // Restart the ESP32
}
```

Puede compararse con la función de envió de datos al servidor, la cual también se encarga de formar un payload solo que este en formato CSV, para posteriormente escribirlo en la microSD. En caso de que la escritura sea exitosa, se imprimirá un mensaje en el monitor serial, en caso contrario se imprimirá un mensaje de error y se reiniciara el ESP32.

#df[
    *CSV.* Es un formato de archivo que se utiliza para almacenar datos tabulares. Cada línea del archivo es una fila de la tabla, y los valores de las columnas se separan por comas.
]

Debe considerarse que en este caso también se implementa un mecanismo de reintento de escritura, el cual se encarga de intentar abrir el archivo hasta 3 veces, en caso de que no se logre abrir el archivo, se reiniciara el ESP32. Así como la escritura de los datos con una fecha predeterminada en caso de que no se tenga acceso a la red, de esta forma se puede identificar cuando se perdió la conexión a internet y mantener el registro de datos.

#pagebreak()

// Pruebas
==== Pruebas <desarrollo_prototipo_estacion_pruebas>

A continuación, se muestra el resultado de una correcta ejecución del código en la estación meteorológica. En la #rf[@reference-station-serial] se puede observar el resultado de la ejecución del código en el monitor serial.

#figure(
    align(left)[
        ```
        Starting MicroMod Weather Station...
        Starting SD card...
        SD card started
        Starting Wi-Fi...
        Connecting to SSID
        Wi-Fi connected
        IP address: 192.168.1.XXX
        Starting time sync...
        Waiting for time sync...
        Time synced
        Starting BME280...
        BME280 started
        Starting VEML6075...
        VEML6075 started
        Setup complete
        Starting report...
        Taking wind and rain measurements, this process will be finished in: 9:50
        ...
        Time: 2023-04-30 23:49:34.000Z
        Temperature: 30.16
        Humidity: 9.85
        Dew Point: -4.99
        Pressure: 29.69
        Rain Fall: 0
        Wind Speed: 4.8
        Wind Direction: 214.01
        UVA: 55.62
        UVB: 45.55
        UV Index: 0.06
        Writing weather data to SD card...
        Data written to SD card successfully
        Sending weather data to PocketBase...
        Data sent to PocketBase successfully
        Report complete
        ```
    ],
    caption: [Resultados de correcta ejecución en la estación meteorológica.],
    kind: "reference",
    supplement: [Referencia],
)<reference-station-serial>

Si se llevó a cabo una correcta ejecución del código, se debería poder observar el registro de los datos en la microSD.

#figure(
    image("images/microSD-test.png", width: 80%),
    caption: [Archivo guardado en la microSD (_data.csv_).],
    kind: image,
    supplement: [Figura],
)<microSD-test>

Abriendo el archivo en un editor de texto se observa lo siguiente.

#figure(
    image("images/station-txt-data.png", width: 80%),
    caption: [Contenido del archivo _data.csv_ en la microSD.],
    kind: image,
    supplement: [Figura],
)<microSD-test-file>

Misma información que puede ser abierta con alguna hoja de cálculo.

#figure(
    image("images/station-csv-data.png", width: 90%),
    caption: [Contenido del archivo _data.csv_ (LibreOffice Calc).],
    kind: image,
    supplement: [Figura],
)<microSD-test-file-csv>

Finalmente se comprueba que los datos se encuentran en la base de datos de PocketBase.

#figure(
    image("images/station-pocketbase-test.png", width: 90%),
    caption: [Datos en la colección `station` (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<pocketbase-test>

Una vez que se ha comprobado que la estación meteorológica funciona correctamente, se puede proceder a realizar la instalación de la estación meteorológica en el lugar donde se llevarán a cabo las mediciones.

Donde se realizará una prueba de su funcionamiento durante una duración aproxima de 15 días, para posteriormente realizar una revisión de los datos obtenidos.

#figure(
    image("images/finished-station.png", width: 70%),
    caption: [Instalación de la estación meteorológica.],
    kind: image,
    supplement: [Figura],
)<station-installation>

=== Servidor <desarrollo_prototipo_servidor>

A continuación, se presenta el desarrollo del servidor que recolectará los datos de los distintos servicios de información meteorológica, para posteriormente almacenarlos en una base de datos y compararlos con los datos obtenidos por la estación meteorológica.

#note[
    La siguiente información tiende a ser más técnica, por lo que se recomienda tener conocimientos básicos de programación y de los servicios de información meteorológica.
]

// Guías, Manuales y Tutoriales
==== Guías, Manuales y Tutoriales <desarrollo_prototipo_servidor_guia-manual-tutorial>

Los siguientes manuales y guías fueron empleados para el desarrollo del servidor.

- https://www.aviationweather.gov/dataserver @AWC_Text-Data-Server
- https://docs.python.org/3/ @Python-Documentation
- The Linux Command Line @The-Linux-Command-Line
- Wicked Cool Shell Scripts @Wicked-Cool-Shell-Scripts
- Python One Liners @Python-One-Liners
- http://www.faqs.org/docs/air/tsshell.html @An-Introduction-to-Shell-Programming
- https://open-meteo.com/en/docs/ @Open-Meteo-Documentation
- https://openweathermap.org/api @OpenWeather-API
- https://developer.accuweather.com/apis @AccuWeather-APIs
- https://jsoncrack.com/ @JSON-Crack
- https://crontab.guru/ @crontab-guru
- https://pocketbase.io/docs/ @PocketBase
- https://ubuntu.com/server/docs @Ubuntu-Server
- https://www.oracle.com/mx/cloud/free/ @oracle
- https://www.cloudflare.com/products/tunnel/ @cloudflared

#pagebreak()

// Características
==== Características <desarrollo_prototipo_servidor_caracteristicas>

#note[
    Para mayor información se recomienda investigar acerca de temas como _Servidores_, _Linux_, _Oracle Cloud_, etc.
]

El presente código se está ejecutando en un servidor de Oracle Cloud, el cual cuenta con las siguientes características.

- *CPU.* 1/8 OCPU.
- *RAM.* 1 GB.
- *Almacenamiento.* 50 GB HDD.
- *Sistema Operativo.* Ubuntu 22.04 LTS. @Ubuntu-Server

Si bien las características del servidor son muy limitadas, esto se debe a que se implementó en el plan de servidores gratuitos de Oracle @oracle , el cual es suficiente para el desarrollo del prototipo.

// Servicios
==== Servicios <desarrollo_prototipo_servidor_servicios>

Los servicios a implementar y de los cuales se recolectarán los datos son los siguientes.

- AccuWeather. 
- AWC.
- Open-Meteo.
- OpenWeatherMap.

Cada uno de los servicios listados cuenta con su propio protocolo de comunicación, por lo que se debe de realizar una implementación para cada uno de ellos. Al igual que la información la recolectan en distintos lapsos de tiempo, por lo que se debe de realizar una implementación para cada caso.

#pagebreak()

// Diagrama de Flujo
==== Diagrama de Flujo <desarrollo_prototipo_servidor_diagrama-flujo>

A continuación, se muestra el siguiente diagrama de flujo, el cual se puede observar en el siguiente #rf[@server-diagram] hecho con el lenguaje de programación D2 @d2 .

#figure(
    image("diagrams/server.png", width: 60%),
    caption: [Flujo del prototipo del servidor.],
    kind: "diagram",
    supplement: [Diagrama],
)<server-diagram>

#pagebreak()

// Código
==== Código <desarrollo_prototipo_servidor_codigo>

La siguiente sección es de las que a simple vista puede parecer simple de realizar, pero en realidad es la más compleja, debido a que se debe de realizar una implementación para cada servicio de información meteorológica, por lo que se debe de realizar una investigación de cada uno de ellos. Ya que si bien transformamos la información recolectada a un mismo formato no toda se implementa de la misma forma.

#note[
    Al lector se le ha ahorrado la lectura necesaria, pero es necesario que tenga presente que existe una documentación extensa que fue empleada para la realización de cada implementación, y que, aunque se ha tratado de simplificar la información, es posible que se presente información demasiado técnica.
]

#note[
    El código utilizado se encuentra en los anexos, pero también recibirá actualizaciones en el siguiente repositorio: https://github.com/Osares10/Weather-Services_PocketBase
]

El desarrollo de la siguiente programación se implementa en base a los siguientes enunciados.

#quote[
    A computer is like a Swiss Army knife that you can configure for countless tasks...

    @Python-One-Liners
]

#quote[
    Bash remains a staple tool for anyone working on Unix-like server or workstations...

    @Wicked-Cool-Shell-Scripts
]

#df[
    *Bash.* Es un lenguaje de programación de scripts que se utiliza en sistemas operativos Unix y Linux.
]

// AccuWeather
===== AccuWeather <desarrollo_prototipo_servidor_codigo_accuweather>

Para la implementación de AccuWeather se emplea el siguiente código.

`accuweather.py` #rf[@anexos_scripts-codigos_servidor_accuweather]

En la primera parte definimos las librerías a emplear.

```py
import requests
import json
from datetime import datetime
```

#df[
    *.py* Es la extensión de los archivos de Python. *Python* siendo el lenguaje de programación de alto nivel, interpretado y de propósito general que emplearemos para la comunicación con los servicios de información meteorológica.
]

Se define la API de AccuWeather, la cual se emplea para realizar las peticiones, entre los parámetros se encuentra la llave de la API, la cual se debe de obtener de la página de AccuWeather @AccuWeather-APIs, y la llave de la ubicación, la cual se obtiene de la página de AccuWeather @AccuWeather-APIs.

```py
# Define API endpoint and parameters
location_key = "YOUR-LOCATION-KEY" # Location key
api_key = "YOUR-API-KEY" # AccuWeather API key
pocketbase_api_url = "https://custom.domain/api/collections/collection_name/records" # Pocketbase API endpoint
```

Se definen los `headers` de la petición, los cuales son necesarios para realizar la petición a PocketBase @PocketBase.

```py
# Define headers
headers = {
    "Content-Type": "application/json",
}
```

Se crea una función para obtener el tiempo actual, el cual se emplea para imprimir el tiempo de ejecución del script.

```py
# Define function to get current time
def execution_time():
    return datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S")

# Print execution time
print(execution_time() + " - Executing script...")
```

#df[
    *Script.* Es un archivo de texto plano que contiene una serie de instrucciones que se ejecutan secuencialmente. En este caso, el script se emplea para realizar la recolección de datos de AccuWeather y almacenarlos en PocketBase.
]

Se realiza la petición a AccuWeather @AccuWeather-APIs, la cual se almacena en la variable `response`.

```py
# Make API request
print(execution_time() + " - Making request to AccuWeather...")
response = requests.get("http://dataservice.accuweather.com/currentconditions/v1/" + location_key + "/historical/24?apikey=" + api_key + "&language=en-us&details=true&metric=true")
data = json.loads(response.text)
data = json.dumps(data, indent=4)
```

Se verifica que la petición haya sido exitosa, en caso de serlo se procede a realizar el parseo de la información, la cual se almacena en la variable `new_data`, la cual se emplea para realizar la petición a PocketBase @PocketBase.

```py
# Check if response was successful
if response.status_code == 200:
    print(execution_time() + " - Request to AccuWeather successful!")
    # Parse JSON response
    for i in range(0, len(json.loads(data))):
        new_data = {
            "time": datetime.utcfromtimestamp(json.loads(data)[i]['EpochTime']).strftime('%Y-%m-%d %H:%M:%S.000Z'),
            "temperature": json.loads(data)[i]['Temperature']['Metric']['Value'],
            "realFeelTemperature": json.loads(data)[i]['RealFeelTemperature']['Metric']['Value'],
            "realFeelTemperatureShade": json.loads(data)[i]['RealFeelTemperatureShade']['Metric']['Value'],
            "relativeHumidity": json.loads(data)[i]['RelativeHumidity'],
            "indoorRelativeHumidity": json.loads(data)[i]['IndoorRelativeHumidity'],
            "dewPoint": json.loads(data)[i]['DewPoint']['Metric']['Value'],
            "windDirection": json.loads(data)[i]['Wind']['Direction']['Degrees'],
            "windSpeed": json.loads(data)[i]['Wind']['Speed']['Metric']['Value'],
            "uvIndex": json.loads(data)[i]['UVIndex'],
            "visibility": json.loads(data)[i]['Visibility']['Imperial']['Value'],
            "pressure": json.loads(data)[i]['Pressure']['Imperial']['Value'],
            "apparentTemperature": json.loads(data)[i]['ApparentTemperature']['Metric']['Value'],
            "precipitation": json.loads(data)[i]['Precip1hr']['Metric']['Value'],
        }
        # Send data to PocketBase API
        print(execution_time() + " - Sending data to PocketBase with date and time: " + new_data['time'])

        response = requests.post(pocketbase_api_url, headers=headers, data=json.dumps(new_data))

        # Check if response was successful
        if response.status_code == 200:
            print(execution_time() + " - Data sent to PocketBase successfully!")
        else:
            print(execution_time() + " - Request to PocketBase failed! with status code: " + str(response.status_code))

else:
    print(execution_time() + "Request to AccuWeather failed! with response code: " + str(response.status_code))
```

Los datos obtenidos de AccuWeather se almacenan en PocketBase.

// AWC
===== AWC <desarrollo_prototipo_servidor_codigo_awc>

Se implementa el siguiente código para obtener los datos de AWC.

`awc.py` #rf[@anexos_scripts-codigos_servidor_awc]

En la primera parte definimos las librerías a emplear, entre ellas se encuentra `requests`, la cual se emplea para realizar las peticiones a AWC, `csv`, para leer el archivo CSV, `json`, para parsear la información obtenida de AWC, y `datetime`, para obtener la fecha y hora actual.

#df[
    *Librerías.* (Libraries) Son conjuntos de funciones y procedimientos que se pueden utilizar para realizar tareas específicas, como la lectura de archivos CSV, la realización de peticiones HTTP, el parseo de información JSON, entre otros.
]

```py
# Import libraries
import requests
import csv
import json
from datetime import datetime
```

#note[
    Para evitar repetir código, solo se explicarán las implementaciones específicas de cada API, para ver el código completo se puede consultar la #rf[@anexos_scripts-codigos_servidor_awc].
]

Las constantes y variables globales se definen de la siguiente manera. `API_URL` es la URL de la API de AWC, `POCKETBASE_API_URL` es la URL de la API de PocketBase, `data_type` es el tipo de datos a obtener, `airport_code` es el código del aeropuerto, `hours_before_now` es el número de horas antes de ahora para obtener los datos, y `output_format` es el formato de salida de los datos.

#pagebreak()

```py
# Define constants
API_URL = "https://www.aviationweather.gov/adds/dataserver_current/httpparam" # Aviation Weather Center API URL
POCKETBASE_API_URL = "https://custom.domain/api/collections/collection_name/records" # PocketBase API URL

# Define variables
data_type = "metars"
airport_code = "XXXX" # Airport code
hours_before_now = "24" # Number of hours before now to fetch data for
output_format = "csv"
```

Se define la función `fetch_csv_data`, la cual recibe como parámetros la URL de la API y los parámetros de la petición. Se realiza la petición a AWC, y se verifica que la petición haya sido exitosa, en caso de serlo se decodifica el contenido de la respuesta, se parsea la información y se retorna.

#df[
    *Parsear.* (Parsing) Es el proceso de analizar una cadena de símbolos, ya sea en lenguaje natural, lenguajes informáticos o estructuras de datos, conforme a las reglas de una gramática formal. El término análisis proviene del latín pars, que significa parte.
]

```py
# Define function to fetch CSV data
def fetch_csv_data(api_url, parameters):
    print(execution_time() + " - Making request to Aviation Weather Center...")
    # Make the API request
    response = requests.get(api_url, params=parameters)
    # Check for successful request
    if response.status_code == 200:
        # Decode the CSV content
        content = response.content.decode("utf-8")
        # Parse the CSV data and return it
        csv_data = list(csv.reader(content.splitlines(), delimiter=","))
        return csv_data
    else:
        print(execution_time() + " - Request to Aviation Weather Center failed! with status code: " + str(response.status_code))
```

A continuación, se enlista el proceso de refinamiento de los datos obtenidos de AWC. Primero se obtiene la información de AWC, luego se verifica que haya resultados en la información obtenida, en caso de haberlos se parsea la información y se convierte a JSON, y finalmente se envía la información a PocketBase.

```py
# Call the function to fetch the CSV data
csv_data = fetch_csv_data(API_URL, parameters)

# Check if there are results in the CSV data
if len(csv_data) <= 6:
    print(execution_time() + " - No results found in CSV data received from Aviation Weather Center")
else:
    print(execution_time() + " - CSV data received from Aviation Weather Center successfully!")
    # Parse the remaining rows of the CSV data and convert to JSON
    print(execution_time() + " - Parsing CSV data and converting it to JSON...")
    for row in csv_data[6:]: # Skip the first 6 rows
        # Get the headers from the first row of the CSV data
        headers = csv_data[5]
        # Create a dictionary with the desired keys and values
        data = {
            "raw_text": row[headers.index("raw_text")],
            "station_id": airport_code,
            "observation_time": datetime.strptime(row[headers.index("observation_time")], "%Y-%m-%dT%H:%M:%SZ").strftime("%Y-%m-%d %H:%M:%S.000Z"),
            "temp_c": float(row[headers.index("temp_c")]),
            "dewpoint_c": float(row[headers.index("dewpoint_c")]) if row[headers.index("dewpoint_c")] else 99, # Set to 99 if dewpoint_c is empty
            "wind_dir_degrees": int(row[headers.index("wind_dir_degrees")]) if row[headers.index("wind_dir_degrees")] else 0,
            "wind_speed_kt": int(row[headers.index("wind_speed_kt")]) if row[headers.index("wind_speed_kt")] else 0,
            "altim_in_hg": float(row[headers.index("altim_in_hg")]),
            "corrected": bool(row[headers.index("corrected")]),
            "precip_in": float(row[headers.index("precip_in")]) if row[headers.index("precip_in")] else 0,
            "metar_type": row[headers.index("metar_type")],
        }
```

// Open-Meteo
===== Open-Meteo <desarrollo_prototipo_servidor_codigo_open-meteo>

Para Open-Meteo se trabaja sobre el siguiente código.

`open-meteo.py` #rf[@anexos_scripts-codigos_servidor_open-meteo]

Las librerías que se importan son las siguientes. `requests` se utiliza para realizar peticiones HTTP, `json` para trabajar con JSON, `datetime` para trabajar con fechas y horas, y `timedelta` para trabajar con intervalos de tiempo.

```py
import requests
import json
from datetime import datetime
from datetime import date
from datetime import timedelta
```

El intervalo de tiempo que se utiliza para obtener los datos es de 24 horas, por lo que se obtiene la fecha y hora actual, y se le resta 24 horas para obtener la fecha y hora de inicio del intervalo de tiempo.

```py
# Get previous day
previous_day = (datetime.utcnow() - timedelta(days=1)).strftime("%Y-%m-%d")
```

Se definen los parámetros de la petición a Open-Meteo. Se define la latitud y longitud de la ubicación, las variables que se desean obtener, la unidad de la velocidad del viento, la unidad de la precipitación, el número de días de pronóstico, y la fecha y hora de inicio y fin del intervalo de tiempo.

```py
params = {
    "latitude": XX.XX, # Latitude of the location
    "longitude": XXX.XX, # Longitude of the location
    "hourly": "temperature_2m, relativehumidity_2m, dewpoint_2m, apparent_temperature, rain,pressure_msl, surface_pressure, visibility, windspeed_10m, windspeed_80m, windspeed_120m, windspeed_180m, winddirection_10m, winddirection_80m, winddirection_120m, winddirection_180m, temperature_80m,temperature_120m, temperature_180m, uv_index",
    "windspeed_unit": "kn", # Unit of the wind speed
    "precipitation_unit": "inch", # Unit of the precipitation
    "forecast_days": 1, 
    "start_date": previous_day, # Start date of the forecast
    "end_date": previous_day # End date of the forecast, for one day, use the same date as start_date
}
```

Para la extracción de la información por horas se implementa el siguiente código.

```py
# Send data to Pocketbase API one hour at a time
    for hour in range(0, len(json.loads(data)['hourly']['time'])):
        new_data = {
            "time": datetime.strptime(json.loads(data)['hourly']['time'][hour], "%Y-%m-%dT%H:%M").strftime("%Y-%m-%d %H:%M:00.000Z"),
            "temperature_2m": json.loads(data)['hourly']['temperature_2m'][hour],
            "relativehumidity_2m": json.loads(data)['hourly']['relativehumidity_2m'][hour],
            "dewpoint_2m": json.loads(data)['hourly']['dewpoint_2m'][hour],
            "apparent_temperature": json.loads(data)['hourly']['apparent_temperature'][hour],
            "rain": json.loads(data)['hourly']['rain'][hour],
            "pressure_msl": json.loads(data)['hourly']['pressure_msl'][hour],
            "surface_pressure": json.loads(data)['hourly']['surface_pressure'][hour],
            "windspeed_10m": json.loads(data)['hourly']['windspeed_10m'][hour],
            "windspeed_80m": json.loads(data)['hourly']['windspeed_80m'][hour],
            "windspeed_120m": json.loads(data)['hourly']['windspeed_120m'][hour],
            "windspeed_180m": json.loads(data)['hourly']['windspeed_180m'][hour],
            "winddirection_10m": json.loads(data)['hourly']['winddirection_10m'][hour],
            "winddirection_80m": json.loads(data)['hourly']['winddirection_80m'][hour],
            "winddirection_120m": json.loads(data)['hourly']['winddirection_120m'][hour],
            "winddirection_180m": json.loads(data)['hourly']['winddirection_180m'][hour],
            "temperature_80m": json.loads(data)['hourly']['temperature_80m'][hour],
            "temperature_120m": json.loads(data)['hourly']['temperature_120m'][hour],
            "temperature_180m": json.loads(data)['hourly']['temperature_180m'][hour],
            "uv_index": json.loads(data)['hourly']['uv_index'][hour]
        }
```

// OpenWeatherMap
===== OpenWeatherMap <desarrollo_prototipo_servidor_codigo_openweathermap>

En este script se trabaja con intervalos de tiempo puesto que las peticiones se realizarán cada 20 minutos a diferencia de los demás servicios donde las peticiones se realizan cada 24 horas. Esto debido a que en OpenWeather no se puede obtener la información de un intervalo de tiempo específico, sino que se obtiene la información de un intervalo de tiempo que va desde la fecha y hora actual hasta 3 horas antes de la fecha y hora actual.

`openweathermap.py` #rf[@anexos_scripts-codigos_servidor_openweathermap]

Los parámetros que se definen son los siguientes. Se define la API key de OpenWeatherMap, la latitud y longitud de la ubicación, la url de la API de OpenWeatherMap, la url de la API de Pocketbase, y los headers de la petición a Pocketbase.

```py
# Define API endpoint and parameters
api_key = "YOUR-API-KEY" # OpenWeatherMap API key
latitude = XX.XX # Latitude of the location
longitude = XXX.XX # Longitude of the location
url = "https://api.openweathermap.org/data/2.5/weather?lat=" + str(latitude) + "&lon=" + str(longitude) + "&appid=" + api_key
pocketbase_api_url = "https://custom.domain/collections/collection_name/records" # Pocketbase API endpoint
headers = {
    "Content-Type": "application/json",
}
```

La estructura de la petición a OpenWeatherMap es la siguiente. Se envía la petición a la API de OpenWeatherMap y se obtiene la respuesta en formato JSON. Se parsea la respuesta y se obtienen los datos que se desean obtener. Se crea un diccionario con los datos que se obtuvieron de la respuesta y se envía la petición a Pocketbase.

```py
# Parse JSON response
    data = json.loads(response.text)

    data = json.dumps(data, indent=4)

    new_data = {
        "time": datetime.utcfromtimestamp(json.loads(data)['dt']).strftime('%Y-%m-%d %H:%M:%S.000Z'),
        "temperature": json.loads(data)['main']['temp'],
        "feels_like": json.loads(data)['main']['feels_like'],
        "pressure": json.loads(data)['main']['pressure'],
        "humidity": json.loads(data)['main']['humidity'],
        "wind_speed": json.loads(data)['wind']['speed'],
        "wind_direction": json.loads(data)['wind']['deg'],
    }
```

// Pruebas
==== Pruebas <desarrollo_prototipo_servidor_pruebas>

La ejecución de las pruebas se llevará a cabo mediante la ejecución de múltiples scripts a distintos tiempos, establecidos en el `crontab` del servidor. Los scripts se ejecutarán cada 24 horas, a las `00:00` horas, y cada 20 minutos, a partir de las `00:00` horas hasta las `23:40` horas dependiendo el caso.

El crontab se configuro con la ayuda de Crontab Guru @crontab-guru y se estableció de la siguiente manera.

#df[
    *Crontab.* Es un archivo de configuración que contiene las tareas programadas para ejecutarse en un sistema Unix o Unix-like. Las tareas programadas se conocen como _cron jobs_.
]

```
0     18 * * * python3 /home/ubuntu/weather/accuweather.py >> /home/ubuntu/weather/accuweather.log
0     18 * * * python3 /home/ubuntu/weather/awc.py >> /home/ubuntu/weather/awc.log
0     18 * * * python3 /home/ubuntu/weather/open-meteo.py >> /home/ubuntu/weather/open-meteo.log
*/20  * * * * python3 /home/ubuntu/weather/openweathermap.py >> /home/ubuntu/weather/openweathermap.log
```

Se puede observar que todos los scripts registran la información en un archivo `.log` para poder verificar que se ejecutaron correctamente.

#df[
    *.log* Es un archivo que registra los eventos que ocurren en un sistema, como la ejecución de un script, la conexión a una base de datos, etc.
]

A continuación, se presentan los resultados obtenidos en la ejecución de los scripts.

#figure(
    align(left)[
        ```
        2023-04-30 00:00:01 - Executing script...
        2023-04-30 00:00:02 - Making request to AccuWeather...
        2023-04-30 00:00:10 - Request to AccuWeather successful!
        2023-04-30 00:00:14 - Sending data to PocketBase with date and time: 2023-04-30 00:55:00.000Z
        2023-04-30 00:00:21 - Data sent to PocketBase successfully!
        ...
        ```
    ],
    caption: [Resultados de correcta ejecución de `accuweather.py`.],
    kind: "reference",
    supplement: [Referencia],
)<reference-accuweather>

#figure(
    image("images/accuweather-test.png", width: 100%),
    caption: [Datos en la colección `accuweather` (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<reference-accuweather-test>

#figure(
    align(left)[
        ```
        2023-04-30 00:00:01 - Executing script...
        2023-04-30 00:00:02 - Making request to Aviation Weather Center...
        2023-04-30 00:00:10 - Request to Aviation Weather Center successful!
        2023-04-30 00:00:14 - CSV data received from Aviation Weather Center successfully!
        2023-04-30 00:00:14 - Parsing CSV data and converting it to JSON...
        2023-04-30 00:00:14 - Sending data to PocketBase with date and time: 2023-04-30 00:56:00.000Z
        2023-04-30 00:00:18 - Data sent to PocketBase successfully!
        ...
        ```
    ],
    caption: [Resultados de correcta ejecución de `awc.py`.],
    kind: "reference",
    supplement: [Referencia],
)<reference-awc>

#figure(
    image("images/awc-test.png", width: 100%),
    caption: [Datos en la colección `awc` (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<reference-awc-test>

#figure(
    align(left)[
        ```
        2023-04-30 00:00:00 - Executing script...
        2023-04-30 00:00:01 - Making request to Open-Meteo...
        2023-04-30 00:00:02 - Request to Open-Meteo successful!
        2023-04-30 00:00:03 - Sending data to PocketBase with date and time: 2023-04-30 00:00:00.000Z
        2023-04-30 00:00:04 - Data sent to PocketBase successfully!
        ...
        ```
    ],
    caption: [Resultados de correcta ejecución de `open-meteo.py`.],
    kind: image,
    supplement: [Referencia],
)<reference-open-meteo>

#figure(
    image("images/openmeteo-test.png", width: 100%),
    caption: [Datos en la colección `open_meteo` (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<reference-openmeteo-test>

#figure(
    align(left)[
        ```
        2023-04-30 23:40:00 - Executing script...
        2023-04-30 23:40:00 - Making request to OpenWeatherMap...
        2023-04-30 23:40:01 - Request to OpenWeatherMap successful!
        2023-04-30 23:40:01 - Sending data to PocketBase with date and time: 2023-04-30 00:57:00.000Z
        2023-04-30 23:40:02 - Data sent to PocketBase successfully!
        ...
        ```
    ],
    caption: [Resultados de correcta ejecución de `openweathermap.py`.],
    kind: "reference",
    supplement: [Referencia],
)<reference-openweathermap>

#figure(
    image("images/openweathermap-test.png", width: 100%),
    caption: [Datos en la colección `openweathermap` (_PocketBase_).],
    kind: image,
    supplement: [Figura],
)<reference-openweathermap-test>

#pagebreak()

== Resultados <desarrollo_resultados>

- *Accuweather.* 384 registros, `2023-04-30` `00:55:00` a `2023-05-15` `22:55:00`.

- *Aviation Weather Center.* 328 registros, `2023-04-30` `00:55:00` a `2023-05-15` `23:40:00`.

- *BME680.* 2053 registros, `2023-04-30` `23:50:07` a `2023-05-16` `00:35:00`.

- *Open-Meteo.* 384 registros, `2023-04-30` `00:00:00` a `2023-05-15` `23:00:00`.

- *OpenWeatherMap.* 1082 registros, `2023-04-30` `23:40:02` a `2023-05-16` `00:00:02`.

- *Estación.* 2122 (_PocketBase_), 2134 (_microSD_) registros, `2023-04-30` `23:49:34` a `2023-05-16` `00:00:36`.

#figure(
    table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    [*Registro*], [*Intervalo*], [*Esperados*], [*Obtenidos*], [*Porcentaje*],
    [Accuweather], [`01:00`], [384], [384], [100%],
    [AWC], [`01:00`], [384], [328], [85.42%],
    [BME680], [`00:10`], [2165], [2028], [93.67%],
    [Open-Meteo], [`01:00`], [384], [384], [100%],
    [OpenWeather], [`00:20`], [1082], [1082], [100%],
    [Estación (PB)], [`00:10`], [2164], [2122], [98.06%],
    [Estación (SD)], [`00:10`], [2164], [2134], [98.61%],
    ),
    caption: "Porcentajes de datos obtenidos.",
    kind: table,
    supplement: [Tabla]
)<table-percentages>

#note[
    Recordar que las siguientes estadísticas son de datos obtenidos en un periodo de 15 días, que aproximadamente van del 1 al 15 de mayo de 2023, y que los tiempos están en formato UTC.
]

#pagebreak()

== Análisis de Resultados <desarrollo_analisis-resultados>

#note[
    Para la presente sección al lector se le ha ahorrado la lectura necesaria, pero es necesario que tenga presente que existe una documentación extensa que fue empleada para la realización de cada implementación, y que, aunque se ha tratado de simplificar la información, es posible que se presente información demasiado técnica.
]

El análisis de los resultados se realiza a través de la comparación de los datos obtenidos por cada fuente de información con los datos obtenidos por la estación meteorológica.

Debido a los distintos tiempos de actualización de cada fuente de información, se realiza una comparación de los datos obtenidos en un intervalo de tiempo de 10 minutos, para los datos no existentes en estos periodos se generarán a partir de extrapolación lineal.

=== Extracción de Datos <desarrollo_analisis-resultados_extraccion-datos>

Los datos se encuentran en el servidor, pero es necesario recolocarlos en un archivo de CSV para poder realizar el análisis de los mismos.

Para esto se realiza un script en Python que extrae los datos de cada colección de _PocketBase_ y los guarda en un archivo CSV.

#note[
    El código utilizado se encuentra en los anexos, pero también recibirá actualizaciones en el siguiente repositorio: https://github.com/Osares10/PocketBase-to-CSV
]

La implementación de este script se realiza en el siguiente código.

`raw.py` #rf[@anexos_scripts-codigos_recoleccion_raw]

En la primera parte definimos las librerías a emplear.

```py
# This script fetches data from PocketBase and writes it to a CSV file

import requests
import csv
```

Posteriormente definimos las variables a emplear.

```py
POCKETBASE_API_URL = "https://domain.name/api/collections/" # Specify the PocketBase API URL here
COLLECTION_NAME = "station"  # Specify the collection name here
OUTPUT_CSV_FILE = f"{COLLECTION_NAME}.csv"  # Generate the output file name
```

Definimos la función que nos permitirá obtener los datos de la colección.

```py
# Define function to fetch data from PocketBase using pagination
def fetch_pocketbase_data(api_url):
    page = 1
    per_page = 50
    records = []

    while True:
        params = {
            "page": page,
            "perPage": per_page,
            "sort": "-created"
        }

        response = requests.get(api_url, params=params)

        if response.status_code == 200:
            json_response = response.json()
            records += json_response.get("items", [])

            # Check if there are more pages to fetch
            if json_response["page"] == json_response["totalPages"]:
                break

            # Move to the next page
            page += 1
        else:
            print("Request to PocketBase failed with status code:", response.status_code)
            break

    return records
```

Construimos la URL de la API de _PocketBase_.

```py
# Construct the PocketBase API URL for the specified collection
pocketbase_api_url = f"{POCKETBASE_API_URL}{COLLECTION_NAME}/records"
```

Llama a la función para obtener los datos de _PocketBase_.

```py
# Call the function to fetch data from PocketBase
pocketbase_data = fetch_pocketbase_data(pocketbase_api_url)
```

Verifica si se obtuvieron datos de _PocketBase_.

```py
# Check if there are results in the PocketBase data
if not pocketbase_data:
    print("No data found in PocketBase")
else:
    print("PocketBase data retrieved successfully!")
    # Extract the keys from the first record to use as CSV headers
    headers = list(pocketbase_data[0].keys())

    # Open the CSV file for writing
    with open(OUTPUT_CSV_FILE, mode="w", newline="") as file:
        writer = csv.DictWriter(file, fieldnames=headers)
        writer.writeheader()

        # Write each record to the CSV file
        for record in pocketbase_data:
            writer.writerow(record)

    print("Data written to CSV file:", OUTPUT_CSV_FILE)
```

A partir de la ejecución del script obtenemos lo siguiente:

#figure(
    image("images/raw-files.png", width: 80%),
    caption: [Datos de la recolección del script de `raw.py`.],
    kind: image,
    supplement: [Figura],
)<image-raw_files>

=== Refinamiento de Datos <desarrollo_analisis-resultados_refinamiento-datos>

Previo al análisis de los datos, se realiza un refinamiento de los mismos, para eliminar los datos que no son necesarios para el análisis, así como para completar los datos faltantes.

#note[
    El código utilizado se encuentra en los anexos, pero también recibirá actualizaciones en el siguiente repositorio: https://github.com/Osares10/CSV-Data-Refinement
]

Para refinar los datos se realizan los siguientes tres procedimientos sobre el archivo CSV.

- Se reescriben las fechas de los datos, para que se encuentren en formato ISO 8601, aceptado por Excel, de igual forma para las fechas registradas incorrectamente en el campo de `date` se reemplazan por la fecha de `created`.

#df[
    *ISO 8601.* Formato de fecha y hora internacionalmente aceptado, `AAAA-MM-DDTHH:MM:SS`.
]

- Se redondean los tiempos de los datos a 10 minutos, para que coincidan con los tiempos de la estación meteorológica.

- Se rellenan los datos faltantes, a partir de la extrapolación lineal de los datos existentes.

A continuación, se muestran las transformaciones que experimentaran nuestros datos en el siguiente #rf[@refinement-diagram] hecho con el lenguaje de programación D2 @d2 .

#figure(
    image("diagrams/refinement.png", width: 30%),
    caption: [Refinamiento de datos.],
    kind: "diagram",
    supplement: [Diagrama],
)<refinement-diagram>

El separar el proceso en múltiples pasos, nos permite realizar el refinamiento de los datos de forma más sencilla, así como realizar pruebas intermedias para verificar que los datos se encuentren en el formato correcto.

Los códigos empleados para cada etapa se pueden encontrar en los siguientes anexos.

- `redate.py` #rf[@anexos_scripts-codigos_procesamiento_reescribir]

- `round.py` #rf[@anexos_scripts-codigos_procesamiento_redondeo]

- `interpolate.py` #rf[@anexos_scripts-codigos_procesamiento_interpolacion] @pandas

A partir de la ejecución de los scripts obtenemos los siguientes archivos.

#figure(
    image("images/final-files.png", width: 80%),
    caption: [Resultados del refinamiento de datos.],
    kind: image,
    supplement: [Figura],
)<image-final_files>

Estos archivos son los que se utilizarán para el análisis de los datos, ya que cada archivo CSV contiene los datos de una sola variable, pero de todas las colecciones.

Debido al soporte nativo de los archivos CSV por parte de Excel y por la facilidad de uso de los mismos, se decidió utilizar este formato para el análisis de los datos.

Una vez que se han refinado los datos, se procede a realizar el análisis de los mismos.

=== Análisis de Datos <desarrollo_analisis-resultados_analisis-datos>

Para el análisis se desarrolla un archivo Excel, en el cual se realizan los cálculos necesarios para obtener los resultados deseados.

#note[
    Se espera que el lector tenga conocimientos básicos de Excel, para poder entender el análisis realizado. Se omite la explicación de las fórmulas utilizadas, ya que se considera que son sencillas de entender. El archivo `Analysis.xlsx` queda a disposición del lector para su análisis a petición.
]

El archivo Excel se divide en múltiples hojas, cada una para una variable diferente, en las cuales se realiza el análisis de los datos. A continuación, se muestra la hoja de `Temperature` como ejemplo.

#figure(
    image("images/analysis-temperature.png", width: 100%),
    caption: [Análisis de la variable `Temperature`.],
    kind: image,
    supplement: [Figura],
)<image-analysis_temperature>

En la hoja se muestran los datos de la variable `Temperature`, así como los cálculos realizados para obtener los resultados deseados.

#note[
    A continuación, se muestra una breve explicación de los cálculos realizados, los cuales fueron realizados para cada variable.
]

#pagebreak()

Los cálculos realizados para cada variable son los siguientes.

- `Average`. Promedio de los datos.

#mathBlock[
$
    macron(x) = 1/n sum_(i=1)^(n) x_i = 1/n (x_1 + x_2 + ... + x_n)
$
]

- `Deviation`. Desviación simple de los datos.

#mathBlock[
    $
        sigma = x - macron(x)
    $
]
- `Minimum`. Valor mínimo de la desviación los datos.

#mathBlock[
    $
        min(x) = min(x_1, x_2, ..., x_n) - macron(x)
    $
]

- `Maximum`. Valor máximo de la desviación de los datos.

#mathBlock[
    $
        max(x) = max(x_1, x_2, ..., x_n) - macron(x)
    $
]

- `Correction Factor`. Factor de corrección de los datos, calculado a partir de la desviación simple.

#mathBlock[
    $
        C_F = 1/n sum_(i=1)^(n) sigma = 1/n (sigma_1 + sigma_2 + ... + sigma_n)
    $
]

- `Correction`. Corrección de los datos, calculada a partir de la desviación simple.

#mathBlock[
    $
        C = sigma - C_F
    $
]

- `Corrected`. Datos corregidos, a partir de la corrección calculada.

#mathBlock[
    $
        x_C = x - C_F
    $
]

A partir de estos cálculos podemos obtener las siguientes gráficas y datos para cada variable.

#pagebreak()

#set page(
    flipped: true,
)

==== Dewpoint <desarrollo_analisis-resultados_analisis-datos_dewpoint>

Para el punto de rocío se obtienen un factor de corrección de `-0.6359 °C`.

#figure(
    image("graphs/Dewpoint.png", width: 100%),
    caption: [Punto de rocío.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#df[
    *Factor de corrección.* Valor utilizado para ajustar una medición a un valor de referencia.
]

Con su respectiva desviación, comparada contra los mínimos, máximos y la nueva desviación a partir de los datos corregidos.

#figure(
    image("graphs/Dewpoint-DC.png", width: 100%),
    caption: [Desviación del punto de rocío.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Resultando así en la gráfica final comparando los datos corregidos contra los datos promedio.

#figure(
    image("graphs/Dewpoint-AC.png", width: 100%),
    caption: [Corrección comparada con el promedio del punto de rocío.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

==== Humidity <desarrollo_analisis-resultados_analisis-datos_humidity>

Para la humedad se obtienen un factor de corrección de `-6.482 %`.

#figure(
    image("graphs/Humidity.png", width: 100%),
    caption: [Humedad.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Con su respectiva desviación, comparada contra los mínimos, máximos y la nueva desviación a partir de los datos corregidos.

#figure(
    image("graphs/Humidity-DC.png", width: 100%),
    caption: [Desviación de la humedad.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

Resultando así en la gráfica final comparando los datos corregidos contra los datos promedio.

#figure(
    image("graphs/Humidity-AC.png", width: 100%),
    caption: [Corrección comparada con el promedio de la humedad.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

==== Precipitación <desarrollo_analisis-resultados_analisis-datos_precipitacion>

Para la precipitación se obtienen un factor de corrección de `-0.0122 in`.

#figure(
    image("graphs/Precipitation.png", width: 100%),
    caption: [Precipitación.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Con su respectiva desviación, comparada contra los mínimos, máximos y la nueva desviación a partir de los datos corregidos.

#figure(
    image("graphs/Precipitation-DC.png", width: 100%),
    caption: [Desviación de la precipitación.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Resultando así en la gráfica final comparando los datos corregidos contra los datos promedio.

#figure(
    image("graphs/Precipitation-AC.png", width: 100%),
    caption: [Corrección comparada con el promedio de la precipitación.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

==== Presión <desarrollo_analisis-resultados_analisis-datos_presion>

Para la presión se obtienen un factor de corrección de `-0.102 in/mmHg`.

#figure(
    image("graphs/Pressure.png", width: 100%),
    caption: [Presión.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Con su respectiva desviación, comparada contra los mínimos, máximos y la nueva desviación a partir de los datos corregidos.

#figure(
    image("graphs/Pressure-DC.png", width: 100%),
    caption: [Desviación de la presión.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Resultando así en la gráfica final comparando los datos corregidos contra los datos promedio.

#figure(
    image("graphs/Pressure-AC.png", width: 100%),
    caption: [Corrección comparada con el promedio de la presión.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

==== Temperatura <desarrollo_analisis-resultados_analisis-datos_temperatura>

Para la temperatura se obtienen un factor de corrección de `2.4443 °C`.

#figure(
    image("graphs/Temperature.png", width: 100%),
    caption: [Temperatura.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Con su respectiva desviación, comparada contra los mínimos, máximos y la nueva desviación a partir de los datos corregidos.

#figure(
    image("graphs/Temperature-DC.png", width: 100%),
    caption: [Desviación de la temperatura.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Resultando así en la gráfica final comparando los datos corregidos contra los datos promedio.

#figure(
    image("graphs/Temperature-AC.png", width: 100%),
    caption: [Corrección comparada con el promedio de la temperatura.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

==== Índice UV <desarrollo_analisis-resultados_analisis-datos_indice-uv>

Para el índice UV se obtienen un factor de corrección de `0.82127`.

#figure(
    image("graphs/UV_Index.png", width: 100%),
    caption: [Índice UV.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Con su respectiva desviación, comparada contra los mínimos, máximos y la nueva desviación a partir de los datos corregidos.

#figure(
    image("graphs/UV_Index-DC.png", width: 100%),
    caption: [Desviación del índice UV.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Resultando así en la gráfica final comparando los datos corregidos contra los datos promedio.

#figure(
    image("graphs/UV_Index-AC.png", width: 100%),
    caption: [Corrección comparada con el promedio del índice UV.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

==== Velocidad de Viento <desarrollo_analisis-resultados_analisis-datos_velocidad-de-viento>

#note[
    Para el análisis de la velocidad de viento se tiene que considerar que los datos de la velocidad del viento se encuentran en factores de dirección y velocidad, por lo que se tiene que realizar una conversión a los datos de velocidad de viento en X y Y.
]

===== Coordenadas de Viento en X <desarrollo_analisis-resultados_analisis-datos_coordenadas-de-viento-en-x>

Para las coordenadas de viento en X se obtienen un factor de corrección de `-0.216851 knots`.

#figure(
    image("graphs/Wind_Coordinates_X.png", width: 100%),
    caption: [Coordenadas de viento en X.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

Con su respectiva desviación, comparada contra los mínimos, máximos y la nueva desviación a partir de los datos corregidos.

#figure(
    image("graphs/Wind_Coordinates_X-DC.png", width: 100%),
    caption: [Desviación de las coordenadas de viento en X.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Resultando así en la gráfica final comparando los datos corregidos contra los datos promedio.

#figure(
    image("graphs/Wind_Coordinates_X-AC.png", width: 100%),
    caption: [Corrección comparada con el promedio de las coordenadas de viento en X.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

===== Coordenadas de Viento en Y <desarrollo_analisis-resultados_analisis-datos_coordenadas-de-viento-en-y>

Para las coordenadas de viento en Y se obtienen un factor de corrección de `1.3681405 knots`.

#figure(
    image("graphs/Wind_Coordinates_Y.png", width: 100%),
    caption: [Coordenadas de viento en Y.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Con su respectiva desviación, comparada contra los mínimos, máximos y la nueva desviación a partir de los datos corregidos.

#figure(
    image("graphs/Wind_Coordinates_Y-DC.png", width: 100%),
    caption: [Desviación de las coordenadas de viento en Y.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

Resultando así en la gráfica final comparando los datos corregidos contra los datos promedio.

#figure(
    image("graphs/Wind_Coordinates_Y-AC.png", width: 100%),
    caption: [Corrección comparada con el promedio de las coordenadas de viento en Y.],
    kind: "graph",
    supplement: [Gráfica],
)<image-analysis_temperature-graph>

#pagebreak()

#set page(
    flipped: false,
)

=== Análisis de Costos <desarrollo_analisis-resultados_analisis-de-costos>

#note[
    La tasa de cambio utilizada para la conversión de USD a MXN es de `1 USD = 20.00 MXN` y para la conversión de EUR a MXN es de `1 EUR = 20.00 MXN`.
]

==== Estación <desarrollo_analisis-resultados_analisis-de-costos_estacion>

El costo de la estación elaborada se obtiene a partir de la suma de los costos de los componentes de la estación, los cuales se muestran en la siguiente tabla.

#note[
    Facturas y cotizaciones a disposición de petición.
]

#figure(
    table(
    columns: (60%, 15%, 25%),
    inset: 10pt,
    align: (x, y) => (left, right, right).at(x),
    [*Producto*], [*Cantidad*], [*Precio (MXN)*],
    [Adaptador de Corriente 5V 3A], [1], [480.00],
    [Extensión de uso rudo], [1], [754.53],
    [Kit Estación Meteorológica], [1], [2001.11],
    [Lector de Tarjetas MicroSD], [1], [304.50],
    [MicroMod Weather Board], [1], [1028.64],
    [MicroMod ESP32], [1], [350.00],
    [MicroMod SD 64GB], [1], [240.00],
    [Protector de Sensores], [1], [526.03],
    [*Total*], [], [*5684.81*],
    ),
    caption: "Costos de la Estación.",
    kind: table,
    supplement: [Tabla]
)<table-costs>

==== Estaciones Comerciales <desarrollo_analisis-resultados_analisis-de-costos_estaciones-comerciales>

Se cotizaron 2 estaciones comerciales.

===== BASIC Wireless Weather Station LoRaWAN Set (USA, Europe, Africa, Brazil, Mexico)

La primera estación de la cual se obtuvo una cotización fue la estación BASIC Wireless Weather Station LoRaWAN Set (USA, Europe, Africa, Brazil, Mexico) de la compañía BARANI, la cual tiene un costo de 1,797.00 EUR o aproximadamente 35,940.00 MXN.

#figure(
    image("images/BARANI-station.png", width: 100%),
    caption: [Estación BASIC Wireless Weather Station LoRaWAN (_BARANI_).],
    kind: image,
    supplement: [Figura],
)<image-BARANI-station>

https://barani-design.myshopify.com/products/basic-wireless-weather-station-set

#pagebreak()

===== MWS-C400

La segunda estación de la cual se obtuvo una cotización fue la estación MWS-C400 de la compañía intellisense, la cual tiene un costo inicial de 7,000.00 USD o aproximadamente 140,000.00 MXN.

#figure(
    image("images/intellisense-station.png", width: 100%),
    caption: [Estación MWS-C400 (_intellisense_).],
    kind: image,
    supplement: [Figura],
)<image-intellisense-station>

https://www.intellisenseinc.com/products/weather-stations/mws-c400/

#pagebreak()

= Conclusión <conclusion>

La investigación y construcción de una estación meteorológica ofrecen numerosos beneficios y oportunidades para la comprensión del uso de la tecnología en la meteorología. A lo largo de este proyecto, se han adquirido conocimientos en electrónica, programación y análisis de datos.

La estación meteorológica construida proporciona la capacidad de obtener datos en tiempo real y realizar análisis personalizados. Esto permite una mayor comprensión del clima local y la capacidad de monitorear las condiciones meteorológicas de manera precisa y confiable. Recordar que, al realizar investigaciones y análisis propios, se puede contribuir al conocimiento científico y comprender mejor los patrones climáticos y sus efectos.

Así es como, el proyecto culmina en un análisis de los datos obtenidos por la estación meteorológica construida. Datos que se compararon con los obtenidos de fuentes de información meteorológica como AccuWeather, Aviation Weather Center, Open-Meteo y OpenWeatherMap.

A partir del análisis de los datos, se determinó que la estación meteorológica y sus datos presentan una desviación con respecto a las fuentes de información meteorológica. Por lo tanto, se aplicó una corrección a los datos para obtener resultados más confiables.

De cada una de las variables analizadas, se llegaron a las siguientes conclusiones.

- *Punto de Rocío y Presión.* Los datos de punto de rocío y presión son los más confiables, ya que presentan una desviación mínima con respecto a las fuentes de información meteorológica. Esto puede ser debido a la precisión de los sensores utilizados para medir estos datos, así como a la poca variabilidad de estos datos en el campo.

- *Temperatura y Humedad.* Los datos de temperatura y humedad presentan una desviación mayor con respecto a las fuentes de información meteorológica, por lo que se recomienda realizar una calibración de estos datos cada cierto tiempo para asegurar la confiabilidad de los datos. Es importante tomar en cuenta que la ubicación de la estación puede afectar los datos de temperatura y humedad, por lo que se recomienda colocar la estación en un lugar donde no se vea afectada por la luz solar directa para futuras mediciones.

- *Índice UV.* El dato del índice UV también se ve afectado por la desviación, pero en menor medida. Aunque no es completamente confiable, se puede considerar que es un dato aceptable en términos de precisión. 

- *Velocidad del Viento.* Aunque tiene una desviación reducida, es un dato que se ve afectado por la desviación, por lo que se recomienda realizar una calibración de estos datos cada cierto tiempo para asegurar la confiabilidad de los datos. Es importante tener en cuenta que los datos obtenidos están fuertemente sujetos a las condiciones de la ubicación de la estación.

- *Precipitación.* Fue prácticamente nula durante el periodo de prueba, por lo que no se puede concluir nada sobre este dato. 


Además de los resultados obtenidos, la realización de una propia estación meteorológica nos permite personalizar y experimentar con ella. Podemos realizar mejoras y ajustes según nuestras necesidades y preferencias, fomentando la innovación y la exploración de nuevas ideas en el campo de la meteorología y la aeronáutica.

La ventaja de una estación construida en comparación con las estaciones comerciales es el costo. Mientras que las estaciones comerciales tienen un precio de 35,940.00 MXN y 140,000.00 MXN, la estación construida tiene un costo de 5,684.81 MXN. Además, la estación construida no está limitada por restricciones comerciales y se puede modificar para medir más datos, lo que la hace más versátil.

Si bien no se puede considerar la estación construida como un reemplazo a los sistemas de observación meteorológica, su existencia y aplicaciones son prometedoras, debido a las múltiples implementaciones que se pueden llevar a cabo con la misma, desde el reporte de datos meteorológicos en tiempo real hasta la implementación de sistemas de alerta temprana, el enlace de información mediante el sitio #link("https://www.wunderground.com/pws/overview")[WEATHER UNDERGROUND] y todo esto a un costo accesible.

Los resultados obtenidos y las conclusiones alcanzadas no se habrían logrado de la misma manera sin la construcción de la estación meteorológica. Esta experiencia nos permitió comprender mejor los componentes y su funcionamiento, así como implementar mejoras y mejores prácticas en la toma de datos.

La investigación y construcción de una estación meteorológica son una experiencia enriquecedora que ofrece beneficios tanto en el ámbito personal como en el desarrollo de habilidades técnicas. Este proyecto brinda la oportunidad de contribuir al conocimiento científico, comprender mejor el clima local y abrir puertas a oportunidades profesionales en las áreas de la meteorología, la aeronáutica y la electrónica.

Las aportaciones que brinda a las distintas disciplinas son las siguientes.

- *Aeronáutica.* La estación meteorológica brinda información de suficiente fiabilidad para su manejo y operación en aeropuertos y pistas de menor uso, permitiendo una mejor toma de decisiones en cuanto a la operación de aeronaves aún en zonas remotas.

- *Aeroespacial.* La estación provee información de suficiente fiabilidad para su manejo y operación en zonas de lanzamiento de cohetes de menor escala, educativos, amateur y de investigación, permitiendo un mayor control y seguridad en los lanzamientos.

- *Aviónica.* La estación meteorológica brinda la oportunidad de experimentar con sensores y microcontroladores, permitiendo el desarrollo de habilidades técnicas y la exploración de nuevas ideas en el campo de la electrónica en la aviación.


- *Meteorología.* La estación brinda suficiente información para contribuir a la red de estaciones meteorológicas, permitiendo una mejor comprensión de los patrones climáticos y la predicción del clima en zonas locales.

En conclusión, la estación meteorológica que se ha construido representa una alternativa viable a las estaciones comerciales. Aunque los datos que proporciona no son completamente fiables, esto puede no ser un inconveniente en todos los casos, ya que no todas las aplicaciones requieren una precisión extrema. Sin embargo, si se desea aumentar su fiabilidad, se puede realizar una calibración periódica de los sensores para garantizar la precisión de los datos.

Es importante destacar que la estación no debe considerarse equivalente a una estación profesional. No obstante, esto no resta mérito a su utilidad: sigue siendo una opción más económica y versátil para aquellos que buscan monitorear el clima a un nivel básico.

#pagebreak()

= Glosario <glosario>

Definiciones en orden alfabético.

#include("glossary.typ")

#pagebreak()

= Anexos <anexos>

== Normas, Reglamentos y Manuales <anexos_normas-reglamentos-manuales>

Regulaciones que rigen la instalación y operación de estaciones meteorológicas automáticas, así como la recopilación y uso de datos meteorológicos.

\

- *A Guide to Standards and Best Practices.* Guía de estándares y mejores prácticas para la instalación y operación de estaciones meteorológicas automáticas. @IMCO_Guide

- *AC 00-45H.* Advisory Circular. Aviation Weather Services. @AC-00-45H

- *Manual de Claves.* Manual de claves de la Organización Meteorológica Mundial. @manual-de-claves

- *METAR and TAF Abbreviations.* Abreviaturas utilizadas en los informes METAR y TAF. @METAR-TAF-Abbreviations

- *METAR Text to Symbol.* Conversión de texto METAR a símbolos meteorológicos. @METAR-Text-to-Symbol-Matching

- *NMX-AA-166/1-SCFI-2013.* Norma Mexicana. Estaciones Meteorológicas, Climatológicas e Hidrológicas. Parte 1: Especificaciones técnicas que deben cumplir los instrumentos de medición de las estaciones meteorológicas automáticas y convencionales. @NMX-2

- *NMX-AA-166/2-SCFI-2015.* Norma Mexicana. Estaciones Meteorológicas, Climatológicas e Hidrológicas. Parte 2: Especificaciones técnicas que deben cumplir el emplazamiento y exposición de los instrumentos de medición de las estaciones meteorológicas automáticas y convencionales. @NMX-1

- *Guía de Instrumentos y Métodos de Observación.* Guía de instrumentos y métodos de observación de la Organización Meteorológica Mundial. @guia-de-instrumentos-y-metodos

- *Guía del Sistema Mundial de Observación.* Guía del Sistema Mundial de Observación de la Organización Meteorológica Mundial. @guia-del-sistema-mundial-de-observacion

- *Guide to Instruments and Methods of Observation.* Guía de instrumentos y métodos de observación de la Organización Meteorológica Mundial. @WMO_Guide

- *Training Guide in Surface Weather Observations.* Guía de entrenamiento en observaciones meteorológicas de superficie de la Organización Meteorológica Mundial. @training-guide-in-surface-weather-observations

#pagebreak()

== Reportes <anexos_reportes>

Breve decodificación de los reportes METAR, TAF y NOTAM.

=== METAR <anexos_reportes_metar>

#figure(
    align(left)[
        ```
        MMLO 020455Z 00000KT 8SM SCT220 24/M04 A3011 RMK 8/002
        ```
    ],
    caption: [Ejemplo de reporte METAR.],
    kind: "reference",
    supplement: [Referencia],

)<text-metar-decodificado>

METAR decodificado.

- *Estación:* MMLO (Aeropuerto Internacional del Bajío)
- *Fecha y hora:* 02 de mayo de 2024, 04:55Z
- *Temperatura:* 24.0°C (75°F)
- *Punto de rocío:* -4.0°C (25°F) [HR = 15%]
- *Presión atmosférica (altímetro):* 30.11 pulgadas Hg (1019.7 mb)
- *Viento:* Calma
- *Visibilidad:* 8 millas (13 km)
- *Techo:* al menos 12,000 pies AGL (Sobre el nivel del suelo)
- *Nubes:* nubes dispersas a 22,000 pies AGL (Sobre el nivel del suelo)

\

=== TAF <anexos_reportes_taf>

#figure(
    align(left)[
        ```
        TAF MMLO 020430Z 0206/0306 22010KT P6SM BKN200
          FM021900 24015KT P6SM BKN200
          FM030400 24008KT 6SM HZ BKN200
        ```
    ],
    caption: [Ejemplo de reporte TAF.],
    kind: "reference",
    supplement: [Referencia],

)<text-taf-decodificado>

TAF decodificado:

- *Estación:* MMLO (Aeropuerto Internacional del Bajío)
- *Fecha y hora:* 02 de mayo de 2024, 04:30Z
- *Período de pronóstico:* Desde las 06:00 UTC del 02 de mayo de 2024 hasta las 06:00 UTC del 03 de mayo de 2024
- *Vientos:* Desde el suroeste (220 grados) a 10 nudos (18.5 km/h)
- *Visibilidad:* Más de 6 millas (10 km)
- *Nubes:* Nubes rotas a 20,000 pies AGL (Sobre el nivel del suelo)
\ 
- *Cambios esperados:* A partir de las 19:00 UTC del 02 de mayo de 2024
    - *Vientos:* Desde el oeste-suroeste (240 grados) a 15 nudos (27.8 km/h)
    - *Visibilidad:* Más de 6 millas (10 km)
    - *Nubes:* Nubes rotas a 20,000 pies AGL (Sobre el nivel del suelo)
\
- *Cambios esperados:* A partir de las 04:00 UTC del 03 de mayo de 2024
    - *Vientos:* Desde el oeste-suroeste (240 grados) a 8 nudos (14.8 km/h)
    - *Visibilidad:* 6 millas (10 km)
    - *Clima:* Neblina
    - *Nubes:* Nubes rotas a 20,000 pies AGL (Sobre el nivel del suelo)

\

=== NOTAM <anexos_reportes_notam>

#figure(
    align(left)[
        ```
        A1234/06 NOTAMR A1212/06
        Q)EGTT/QMXLC/IV/NBO/A/000/999/5129N00028W005
        A)EGLL
        B)0609050500
        C)0704300500
        E)DUE WIP TWY B SOUTH CLSD BTN 'F' AND 'R'. TWY 'R' CLSD BTN 'A' AND 'B' AND DIVERTED VIA NEW GREEN CL AND BLUE EDGE LGT. CTN ADZ
        ```
    ],
    caption: [Ejemplo de reporte NOTAM.],
    kind: "reference",
    supplement: [Referencia],

)<text-notam-decodificado>

NOTAM decodificado:

- *Serie y número:* A1234 emitido en 2006 (06)
    Naturaleza del NOTAM: Reemplazando (R) NOTAM A1212 emitido en 2006 (06)
- *FIR:* FIR de Londres (EGTT)
- *Asunto:* Calle de rodaje (MX)
- *Condición:* Cerrada (LC)
- *Tráfico:* NOTAM emitido para vuelos IFR (I) y vuelos VFR (V)
- *Propósito:* NOTAM seleccionado para atención inmediata de los miembros de la tripulación de vuelo (N), para entrada en el PIB (Boletín de Información Pre-vuelo) (B), relacionado con operaciones de vuelo (O)
- *Alcance:* Aeródromo (A)
- *Límites:* FL 000 a FL 999 (000/999)
- *Ubicación geográfica:* 51°29' N 000° 28' W (5129N00028W)
- *Radio de operación del NOTAM: *5 NM (005)
\
- *Aeródromo:* Londres Heathrow (EGLL)
- *Desde:* 05:00 UTC 5 de septiembre de 2006 (060905 0500)
- *Hasta:* 05:00 UTC 30 de abril de 2007 (070430 0500)
- *Categoría:* Aeródromos, rutas aéreas y ayudas terrestres
- *Descripción:* Debido a trabajos en curso (DUE WIP), la calle de rodaje "B Sur" está cerrada entre "F" y "R" (TWY B SOUTH CLSD BTN 'F' AND 'R'). La calle de rodaje "R" está cerrada entre "A" y "B" (TWY 'R' CLSD BTN 'A' AND 'B') y se desvía a través de una nueva línea central verde y luces azules en los bordes (AND DIVERTED VIA NEW GREEN CL AND BLUE EDGE LGT). Se recomienda precaución (CTN ADZ).

#pagebreak()

== Scripts y Códigos <anexos_scripts-codigos>

#include("code.typ")