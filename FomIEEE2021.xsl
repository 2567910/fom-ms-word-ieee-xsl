<?xml version="1.0" encoding="ISO-8859-1"?>

<!--Externe Ressourcen, die referenziert werden -->
<xsl:stylesheet
     version = "1.0"
     xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
     xmlns:b = "http://schemas.openxmlformats.org/officeDocument/2006/bibliography">


  <!--### Abschnitt 0: Grundlegende Einstellungen zur Style-Datei.###-->

  <!--Ausgabe als HTML -->
  <xsl:output method = "html" encoding = "us-ascii"/>

  <!--Das Wurzel-Element weitergeben -->
  <xsl:template match = "/">
    <xsl:apply-templates select = "*"/>
  </xsl:template>

  <!-- Hier kann eine Versionsnummer für das gesamte Dokument gesetzt werden (Optional)-->
  <xsl:template match = "b:version">
    <xsl:text>Version 1.0</xsl:text>
  </xsl:template>

  <!--Hier wird der Name festgelegt, der in Word 2007 erscheinen soll -->
  <xsl:template match = "b:StyleName">
    <xsl:text>Vanilla Style</xsl:text>
  </xsl:template>


  <!--### Abschnitt 1: Hier wird festgelegt, wie das Formular aussehen soll,
    wenn eine neue Quelle angelegt wird (vorausgesetzt, dass die Option
    "Alle Literaturverzeichnisfelder anzeigen" aktiviert ist.) ###-->

  <xsl:template match = "b:GetImportantFields">
    <b:ImportantFields>
      <xsl:choose>

        <!--für Bücher-->
        <xsl:when test="b:SourceType='Book'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--für Buchabschnitte-->
        <xsl:when test="b:SourceType='BookSection'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Author/b:BookAuthor/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:BookTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Zeitungsartikel-->
        <xsl:when test="b:SourceType='JournalArticle'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Volume</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Issue</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--für Artikel einer Zeitschrift-->
        <xsl:when test="b:SourceType='ArticleInAPeriodical'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:PeriodicalTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Edition</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Volume</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Issue</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Konferenzprotokolle-->
        <xsl:when test="b:SourceType='ConferenceProceedings'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Berichte-->
        <xsl:when test="b:SourceType='Report'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Tonaufnahmen-->
        <xsl:when test="b:SourceType='SoundRecording'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Artist/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:AlbumTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:ProductionCompany</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Medium</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Aufführungen-->
        <xsl:when test="b:SourceType='Performance'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Writer/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:ProductionCompany</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Theater</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Kunst-->
        <xsl:when test="b:SourceType='Art'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Artist/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Institution</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Dokumente von Webseiten-->
        <xsl:when test="b:SourceType='DocumentFromInternetSite'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:InternetSiteTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Month</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Day</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:YearAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:MonthAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:DayAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:URL</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Webseiten-->
        <xsl:when test="b:SourceType='InternetSite'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:InternetSiteTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Month</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Day</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:YearAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:MonthAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:DayAccessed</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:URL</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Filme-->
        <xsl:when test="b:SourceType='Film'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Director/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:ProductionCompany</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Interviews-->
        <xsl:when test="b:SourceType='Interview'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Interviewee/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:BroadcastTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Month</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Day</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Broadcaster</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Station</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Patente-->
        <xsl:when test="b:SourceType='Patent'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Inventor/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Month</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Day</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:CountryRegion</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Type</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:PatentNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für elektronische Quellen-->
        <xsl:when test="b:SourceType='ElectronicSource'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:ProductionCompany</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Medium</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für Fälle-->
        <xsl:when test="b:SourceType='Case'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:CaseNumber</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Court</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:AbbreviatedCaseNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

        <!--Für "Verschiedenes"-->
        <xsl:when test="b:SourceType='Misc'">
          <b:ImportantField>
            <xsl:text>b:Author/b:Author/b:NameList</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Title</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:PublicationTitle</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Year</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:City</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Publisher</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Volume</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:Issue</xsl:text>
          </b:ImportantField>
          <b:ImportantField>
            <xsl:text>b:StandardNumber</xsl:text>
          </b:ImportantField>
        </xsl:when>

      </xsl:choose>
    </b:ImportantFields>
  </xsl:template>


  <!--### Abschnitt 2: Hier wird festgelegt, wie die einzelnen Quellen im Literaturverzeichnis
    ausgegeben werden sollen. Hier sind noch nicht alle Arten von Quellen eingetragen.
    Ggf. müssen die entsprechenden Quellenarten noch hinzugefügt werden.###-->

  <!--So werden Interviews ausgegeben -->
  <!--Beispiel: [Tag01] Name Vorname (Sender) zum Thema: Titel_des_Themas (12. Mai 2008).-->
  <!--Anmerkung: Das Feld "Sender"wurde hier benutzt, um die Position im Unternehmen zu beschreiben)-->
  <xsl:template match = "b:Source[b:SourceType = 'Interview']">
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 11pt;">
      <span style="font-weight: bold; ">
        <xsl:text>[</xsl:text>
        <xsl:value-of select = "b:Tag"/>
        <xsl:text>] </xsl:text>
      </span>
      <!-- Autorenliste-->
      <xsl:apply-templates select="b:Author/b:Interviewee" mode="IntervieweeNamelistFull" />
      <!--Sender (hier: Position)-->
      <xsl:text> (</xsl:text>
      <xsl:value-of select = "b:Station"/>
      <!--Thema-->
      <xsl:text>) zum Thema: </xsl:text>
      <xsl:value-of select = "b:Title"/>
      <!--Datum-->
      <xsl:text> (</xsl:text>
      <xsl:value-of select = "b:Day"/>
      <xsl:text>. </xsl:text>
      <xsl:value-of select = "b:Month"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select = "b:Year"/>
      <xsl:text>).</xsl:text>
    </p>
  </xsl:template>

  <!--So werden Bücher, Berichte und elektronische Quellen ausgegeben -->
  <!--Beispiel: [Tag01] Vorname Nachname, Vorname Nachname: Titel (12. Mai 2008).-->
  <xsl:template match = "b:Source[b:SourceType = 'Book'] | b:Source[b:SourceType = 'Report'] | b:Source[b:SourceType = 'ElectronicSource']">
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 11pt;">
      <span style="font-weight: bold; ">
        <xsl:text>[</xsl:text>
        <xsl:value-of select = "b:Tag"/>
        <xsl:text>] </xsl:text>
      </span>
      <!--Autorenliste-->
      <xsl:apply-templates select="b:Author/b:Author" mode="AuthorNamelistFull" />
      <xsl:text>: </xsl:text>
      <!--Titel-->
      <xsl:value-of select = "b:Title"/>
      <!--Datum-->
      <xsl:text> (</xsl:text>
      <xsl:value-of select = "b:City"/>
      <xsl:text>, </xsl:text>
      <xsl:value-of select = "b:Year"/>
      <xsl:text>).</xsl:text>
    </p>
  </xsl:template>

  <!--So werden Webseiten und Dokumente von Webseiten ausgegeben -->
  <!--Beispiel: [Tag01] Autor: Titel (12. Mai 2008)
                [www.vanillav_kann_xsl.de] (Zugriff am: 12. Mai 2008).-->
  <xsl:template match = "b:Source[b:SourceType = 'InternetSite'] | b:Source[b:SourceType = 'DocumentFromInternetSite']">
    <p style="font-family: Arial, Helvetica, sans-serif; font-size: 11pt;">
      <span style="font-weight: bold;">
        <xsl:text>[</xsl:text>
        <xsl:value-of select = "b:Tag"/>
        <xsl:text>] </xsl:text>
      </span>
      <!--Autorenliste-->
      <xsl:apply-templates select="b:Author/b:Author" mode="AuthorNamelistFull" />
      <!--Titel-->
      <xsl:text>: </xsl:text>
      <xsl:value-of select = "b:Title"/>
      <!--Datum-->
      <xsl:text> (</xsl:text>
      <xsl:value-of select = "b:Year"/>
      <xsl:text>) </xsl:text>
      <br />
      <!--URL-->
      <span style="font-size: 10pt; color: #0000FF;">
        <xsl:text>[</xsl:text>
        <xsl:value-of select = "b:URL"/>
        <xsl:text>]</xsl:text>
      </span>
      <!--Zugriffs-Datum-->
      <span style="font-size: 10pt;">
        <xsl:text> (Zugriff: </xsl:text>
        <xsl:value-of select = "b:DayAccessed"/>
        <xsl:text>. </xsl:text>
        <xsl:value-of select = "b:MonthAccessed"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select = "b:YearAccessed"/>
        <xsl:text>).</xsl:text>
      </span>
    </p>
  </xsl:template>


  <!--### Abschnitt 3: Hier wird festgelegt, wie das gesamte Literaturverzeichnis ausgegeben wird.###-->

  <xsl:template match = "b:Bibliography">
    <html xmlns = "http://www.w3.org/TR/REC-html40">
      <body>
        <!--Zuerst kommen Bücher, Berichte und Elektronische Quellen-->
        <xsl:apply-templates select = "b:Source[b:SourceType = 'Book'] | b:Source[b:SourceType = 'Report'] | b:Source[b:SourceType = 'ElectronicSource']">
          <xsl:sort select="b:Tag" order="ascending"/>
        </xsl:apply-templates>
        <br/>

        <!--Anschließend sind Onlinequellen dran-->
        <xsl:text>Onlinequellen</xsl:text>
        <xsl:apply-templates select = "b:Source[b:SourceType = 'InternetSite'] | b:Source[b:SourceType = 'DocumentFromInternetSite']">
          <xsl:sort select="b:Tag" order="ascending"/>
        </xsl:apply-templates>
        <br/>

        <!--Zum Schluss kommen noch Interviews-->
        <xsl:text>Verzeichnis der Interviewpartner</xsl:text>
        <xsl:apply-templates select = "b:Source[b:SourceType = 'Interview']">
          <xsl:sort select="b:Tag" order="ascending"/>
        </xsl:apply-templates>
        <br/>
      </body>
    </html>
  </xsl:template>


  <!--### Abschnitt 4: Hier wird festgelegt, wie einzelne Zitate ausgegeben werden.###-->

  <xsl:template match = "b:Citation/b:Source">
    <html xmlns = "http://www.w3.org/TR/REC-html40">
      <body>
        <!--Zu erst kommt das Tag, Bsp: [VanV]-->
        <span style="font-weight:bold">
          <xsl:text>[</xsl:text>
          <xsl:value-of select = "b:Tag"/>
          <xsl:text>] </xsl:text>
        </span>
        <!-- Anschließend kommen der/die Autoren-->
        <!--Anmerkung: Wie die Liste genau aufgebaut ist, steht in Abschnitt 5-->
        <xsl:apply-templates select="b:Author/b:Author" mode="AuthorNamelistVeryShort" />
        <xsl:apply-templates select="b:Author/b:Interviewee" mode="AuthorNamelistVeryShort" />
        <!--Schließlich kommt das Datum-->
        <xsl:text>, </xsl:text>
        <xsl:value-of select = "b:Year"/>
        <!--und noch die Seiten, wenn sie angegeben wurden-->
        <xsl:if test="../b:Pages != ''">
          <xsl:text>, S. </xsl:text>
          <xsl:value-of select = "../b:Pages"/>
        </xsl:if>
      </body>
    </html>
  </xsl:template>

  <!--### Abschnitt 5: Hier wird festgelegt, wie die verschieden langen Autoren- bzw- Interviewpartnerlisten ausgegeben werden.###-->

  <!-- Vollständige Interviewpartnerliste -->
  <xsl:template match="b:Interviewee" mode="IntervieweeNamelistFull">
    <xsl:for-each select="b:NameList/b:Person">
      <xsl:apply-templates select="."/>
      <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:value-of select="b:Corporate"/>
  </xsl:template>

  <!-- Vollständige Autorenliste -->
  <xsl:template match="b:Author" mode="AuthorNamelistFull">
    <xsl:for-each select="b:NameList/b:Person">
      <xsl:apply-templates select="."/>
      <xsl:if test="position() != last()">
        <xsl:text>, </xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:value-of select="b:Corporate"/>
  </xsl:template>

  <!-- Kurze Autorenliste (wenn mehr als 3 Autoren vorhanden sind, dann wird "et al." hinzugefügt)-->
  <xsl:template match="b:Author" mode="AuthorNamelistShort">
    <xsl:for-each select="b:NameList/b:Person">
      <xsl:choose>
        <xsl:when test="position() = 3">
          <xsl:choose>
            <xsl:when test="last() > 3">
              <xsl:text>et al.</xsl:text>
            </xsl:when>
            <xsl:otherwise>
              <xsl:apply-templates select="."/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:when>
        <xsl:when test="position() > 3">
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates select="."/>
          <xsl:if test="position() != last()">
            <xsl:text>, </xsl:text>
          </xsl:if>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <xsl:value-of select="b:Corporate"/>
  </xsl:template>

  <!-- Sehr kurze Autorenliste(wenn mehr als 1 Autor vorhanden ist, dann wird "et al." hinzugefügt -->
  <xsl:template match="b:Author" mode="AuthorNamelistVeryShort">
    <xsl:for-each select="b:NameList/b:Person">
      <xsl:choose>
        <!--Wenn die Liste mehr als einen Autor enthält-->
        <xsl:when test="last() > 1">
          <xsl:choose>
            <!--Wenn die Position = 1 ist, wird der Autor geschrieben-->
            <xsl:when test="position() = 1">
              <xsl:apply-templates select="."/>
            </xsl:when>
            <!--Wenn die Position = 2 ist, wird " et al." geschrieben-->
            <xsl:when test="position() = 2">
              <xsl:text> et al.</xsl:text>
            </xsl:when>
            <!--Sonst passiert nichts!-->
          </xsl:choose>
        </xsl:when>
        <!--Sonst wird einfach nur der Autor geschrieben-->
        <xsl:otherwise>
          <xsl:apply-templates select="."/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <xsl:value-of select="b:Corporate"/>
  </xsl:template>

  <!--### Abschnitt 6: Hier wird festgelegt, wie der Name einer Einzelnen Person aufgebaut ist.###-->
  <!-- Beispiel: "Vorname Vorname2 Nachname" -->
  <xsl:template match="b:Person">
    <xsl:if test="b:First != ''">
      <xsl:value-of select = "b:First"/>
      <xsl:text> </xsl:text>
    </xsl:if>
    <xsl:if test="b:Middle != ''">
      <xsl:value-of select = "b:Middle"/>
      <xsl:text> </xsl:text>
    </xsl:if>
    <xsl:if test="b:Last != ''">
      <xsl:value-of select = "b:Last"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match = "text()"/>
</xsl:stylesheet>