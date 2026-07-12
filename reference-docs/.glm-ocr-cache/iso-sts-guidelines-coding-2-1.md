![](page=0,bbox=[238, 118, 603, 284])

NISO STS 1.2

IEC/ISO Coding Guidelines

Edition 2.1

![](page=1,bbox=[238, 118, 602, 283])

## Table of Contents

1 Maintenance ... 8

2 Legal Terms ... 8

3 General ... 8

   3.1 Scope of this document ... 8

   3.2 Coding Guidance ... 9

   3.3 Online Standards Development (OSD) ... 9

   3.4 Elements containing IDs ... 10

   3.5 Editorial notes ... 11

   3.6 Formatting of elements and attributes ... 11

4 Structure ... 11

   4.1 General ... 11

   4.2 Types of clause ... 13

   4.3 Front matter ... 14

      4.3.1 General ... 14

      4.3.2 Metadata ... 14

      4.3.3 Foreword ... 17

      4.3.4 Introduction ... 17

   4.4 Body ... 18

      4.4.1 General ... 18

      4.4.2 Clauses and subclauses ... 18

   4.5 Back matter ... 23

      4.5.1 General ... 23

      4.5.2 Bibliography ... 24

5 Content ... 25

   5.1 Spaces, punctuation and formatting ... 25

   5.2 Using <label> and <title> ... 26

   5.3 Using <p> ... 26

   5.4 Symbols - non-alphanumeric ... 26

   5.5 Symbols for variable quantities ... 26

   5.6 Notes, examples and warnings ... 26

   5.7 Lists ... 27

      5.7.1 Lists with labels (ordered lists) ... 28

      5.7.2 Lists without labels (unordered lists) ... 29

   5.8 Specific text alignments ... 30

   5.9 Quotations ... 31

   5.10 Graphics ... 31

![](page=2,bbox=[239, 119, 602, 282])

5.11 Code ... 32

6 Tables ... 33

6.1 General ... 33

6.2 Formal and informal tables ... 33

    6.2.1 Informal tables ... 33

    6.2.2 Formal tables ... 33

6.3 Table cell styling ... 37

    6.3.1 Alignment ... 37

    6.3.2 @style for borders and background colour ... 38

6.4 Merged cells ... 39

6.5 Line breaks and lists within a table ... 39

6.6 Landscape tables ... 39

7 Formulae and equations ... 41

7.1 Elements and attributes ... 41

7.2 Notes to formulae ... 41

7.3 Formula keys ... 41

7.4 MathML ... 42

8 Figures ... 42

8.1 Elements and attributes ... 42

8.2 Sub-figures and multiple graphics within a figure ... 43

8.3 Figure keys ... 43

8.4 Unit statements in figures ... 45

9 Terms and definitions ... 45

9.1 Subclauses inside a "Terms and Definitions" clause ... 45

9.2 Terminological entries in TBX ... 46

    9.2.1 Terms and definitions ... 46

    9.2.2 Definitions ... 46

    9.2.3 Terms and additional information on them ... 46

    9.2.4 Examples in terminology ... 49

    9.2.5 Notes in terminology ... 49

    9.2.6 Cross-references to terms ... 50

    9.2.7 Cross-references to the other sections of the document from the terminology section ... 51

    9.2.8 Coding the source related to the terminological entry ... 51

    9.2.9 Subject fields of a terminological entry ... 52

10 References ... 52

10.1 Document-internal references ... 52

    10.1.1 Cross-references ... 52

    10.1.2 Cross-references to sections, Tables, Figures and Formulae ... 53

    10.1.3 Cross-references to notes and examples ... 53

![](page=3,bbox=[238, 119, 601, 282])

10.1.4 Cross-references to abbreviations ... 53

10.1.5 Cross-references to list items ... 54

10.1.6 Cross-references to items in the bibliography ... 54

10.1.7 References to items in the normative references ... 55

10.1.8 Footnotes ... 55

10.1.9 URL ... 55

10.2 References to other documents ... 56

10.2.1 Supplementary material ... 56

Annex A Multilingual contents, translations and adoptions ... 57

A.1 Definitions ... 57

A.2 Rules of good governance and recommendations for different document categories ... 57

A.3 Structuring and tagging a document ... 58

A.3.1 Structure ... 58

A.3.2 Tagging that may need to be modified ... 59

Annex B Legacy coding and coding from the traditional publication chains (including possible differences between IEC and ISO) ... 61

B.1 Reasons for coding differences ... 61

B.2 Traditional and legacy coding ... 61

B.2.1 Front matter ... 61

B.2.2 Use of <sec> for custom subdivisions ... 62

B.2.3 @content-type for indexes ... 62

B.2.4 Lists of references (normative / bibliographic) with designators ... 62

B.2.5 Numbered paragraphs ... 63

B.2.6 Back matter ... 63

B.2.7 Spaces, punctuation and formatting ... 66

B.2.8 Style type in paragraphs ... 68

B.2.9 Formatting text with <styled-content> ... 68

B. 2.10 Notes and examples ... 71

B.2.11 Lists ... 72

B.2.12 Code ... 75

B.2.13 Boxed text ... 75

B.2.14 Tables ... 75

B.2.15 Formulae ... 80

B.2.16 Figures and graphics ... 83

B.2.17 Terms and definitions ... 89

B.2.18 Cross-references ... 91

B.2.19 Footnotes ... 92

B.2.20 References to external standards ... 94

B.2.21 URLs ... 95

![](page=4,bbox=[239, 119, 601, 282])

B.3 IEC-specific legacy coding...97

B.3.1 Footnotes...97

B.3.2 Editing instructions (deletions, additions)...97

B.3.3 Using <term-display> instead of TBX...98

B.4 ISO-specific legacy coding...100

B.4.1 General...100

B.4.2 Copyright notes...100

B.4.3 Annexes without clear “informative” or “normative” status...101

B.4.4 Punctuation in normative references...102

B.4.5 Content Language...102

Annex C Metadata usage...104

C.1 ISO metadata...104

C.2 IEC metadata...105

C.3 National metadata usage...106

Annex D Amendments...107

D.1 IEC amendments...107

D.1.1 Editing instructions...107

D.2 ISO amendments...109

Annex E...112

E.1 IEC Corrigenda...112

E.2 IEC Interpretation Sheets (ISH)...112

E.3 IEC Software supplements...112

Annex F ID schemes as used in the traditional publication chain...114

F.1 IEC ID scheme...114

F.2 ISO ID scheme...115

![](page=5,bbox=[238, 119, 602, 281])

<div align="center">

Update information

</div>

<table border="1"><tr><td>Edition</td><td>Date</td><td>Authors</td><td>Changes</td></tr><tr><td>ed.0.91</td><td>2020-02-12</td><td rowspan="3">Kylie Rodier(ISO)Serge Juillerat(ISO)Alisdair Menzies(IEC)Anja Bielfeld(IEC)</td><td>update document with decisions taken during JointXML user group meetingsIEC:update with new tagging decided during IECReference group meetings</td></tr><tr><td>ed.1.0</td><td>2021-01-01</td><td>update with correctionsfinalise document</td></tr><tr><td>ed.1.1</td><td>2022-07-01</td><td>minor corrections in various places</td></tr><tr><td>ed.1.11</td><td>2022-08-10</td><td>Anja Bielfeld(IEC)</td><td>update of IEC helpdesk addressIEC example of coding normative references corrected</td></tr><tr><td>ed.2.0</td><td>2024-06-05</td><td>Kylie Rodier(ISO)Serge Juillerat(ISO)Alisdair Menzies(IEC)Leon Morsley(IEC)Anja Bielfeld(IEC)</td><td>update document with OSD developmentsmove traditional publication chain tagging to annex Bsection on table tagging updated and moved out of the annex into the main section on tablesincorporate tagging from NISO STS v.1.2add new section on multilingualism</td></tr><tr><td>ed.2.1</td><td>2025-02-10</td><td>Serge Juillerat(ISO)Alisdair Menzies(IEC)Leon Morsley(IEC)Anja Bielfeld(IEC)Sébastien Baudet(ISO)Brian Stanton(ISO)Hussain Hadi(ISO)</td><td>adapted tagging where NISO STS constraints prevented us from implementing original plansdocumented new metadata tag <processing-meta>updated &amp; replaced several examples</td></tr></table>

![](page=6,bbox=[238, 119, 602, 282])

All rights reserved. The structure and contents of these Coding Guidelines are copyright of IEC and ISO and are subject to certain conditions of copyright. Published by International Electrotechnical Commission (IEC), 3 rue de Varembé, 1211 Geneva 20, Switzerland and International Organization for Standardization (ISO), Chemin de Blandonnet 8, 1214 Vernier, Geneva, Switzerland.

![](page=7,bbox=[238, 119, 602, 282])

## 1 Maintenance

Suggestions for updates to this document will be considered on a regular basis. Please address them to

xmlsupport@iec.ch

helpdesk@iso.org

Our objective is to have a document that is as stable as possible. Therefore, in considering requests, we'll make the distinction between critical updates and improvements consisting of one or several updates.

## 2 Legal Terms

Although these NISO STS 1.2 IEC/ISO Coding Guidelines represent considered guidance for IEC/ISO members (and their respective providers, if any) on the XML conversion and production process, there is no guarantee that this guidance is comprehensive or error-free. These Coding Guidelines are supplied "as-is" without warranty of any kind, either expressed or implied. Any conversion and production of XML from the original IEC and/or ISO source publication(s), including tagging, erroneous or otherwise, done pursuant to these Coding Guidelines is for reference purposes only and shall not affect the meaning or interpretation of the respective IEC and/or ISO source publication(s), including any technical requirements. No liability is assumed by IEC or ISO including for incidental or consequential damage resulting from the use of these Coding Guidelines and any elements of the conversion and production process made thereunder.

All rights reserved. The structure and contents of these Coding Guidelines are copyright of IEC and ISO and are subject to certain conditions of copyright. Published by International Electrotechnical Commission (IEC), 3 rue de Varembé, 1211 Geneva 20, Switzerland and International Organization for Standardization (ISO), Chemin de Blandonnet 8, 1214 Vernier, Geneva, Switzerland.

## 3 General

## 3.1 Scope of this document

This document has been developed by a team of IEC and ISO content and data specialists and describes the tagging of IEC/ISO standards-type documents in XML.

It gives recommendations for the harmonized tagging of content in the IEC/ISO environment and can be used for the following purposes:

- as a basis for IEC/ISO members for their conversion and production process

- to help conversion providers set up the conversion from unstructured content to XML according to the NISO Standards Tag Suite (NISO STS)

It is up to each organisation that uses IEC and ISO XML to implement the coding rules in their standards production chain, but in the interest of issuing national adoptions that correspond exactly to the original documents, we strongly recommend following these rules.

![](page=8,bbox=[238, 119, 602, 283])

A new section on multilingual content/translation has been added with version 2.0. It contains instructions that it is mandatory to follow; these are clearly indicated. It also contains recommendations for organisations who adopt our standards. We have included them with the goal of suggesting a harmonised approach to working with our XML documents, and of providing information that might be of use to our members.

This document applies to NISO STS 1.2 (2022). Versions of this document refer to the implementation status at IEC and ISO, not to NISO STS versions.

## 3.2 Coding Guidance

NISO STS is based on ANSI/NISO Z39.96 (JATS) and is backwards compatible with ISO STS.

It provides a common XML format that developers,publishers, and distributors of standards including national standards bodies, regional and international standards bodies, and standards development organizations, can use to publish and exchange full-text content and metadata of standards.

The full description as well as supporting materials can be found at https://www.niso-sts.org/. Elements and attributes are described in more depth at https://www.niso-sts.org/TagLibrary/niso- sts-TL-1-2-html/index.html.

Structures are provided to encode both the normative and non-normative content of standards, adoptions of standards, and standards-like documents that are produced by standards organizations.

ISO/IEC standards should be drafted according to the ISO/IEC Directives "Rules for the structure and drafting of International Standards", in their current edition. Because the Directives have changed over time and may not have always been followed faithfully, past standards may have been coded differently, for instance, a clause described as required may be absent from an older standard, and other such deviations from the latest Directives may exist.

These past standards should not be used as reference or precedence for exotic coding. Tagging used only in legacy standards will be marked as "Legacy tagging".

Cases where tagging is under investigation for optimisation will be marked as "Under investigation for future implementation".

Where tagging is planned to be implemented, an implementation date will be provided.

## 3.3 Online Standards Development (OSD)

With the first XML publications coming out of the IEC and ISO Online Standards Development platform (OSD), it has become necessary to fully align the XML coding between ISO and IEC content. The transition from NISO STS v.1.0 to version 1.2 (2022) has provided helpful options for that alignment.

The new tagging as it issues from OSD is described in the body of this document. Where tagging differences remain in legacy tagging OR in the traditional production chain of either organisation, the description of the coding has been moved to the annex.

![](page=9,bbox=[237, 119, 602, 282])

## 3.4 Elements containing IDs

As of March 2025, IDs will be assigned to new elements. While they're not yet present in all cases, an increasing number of documents will have IDs on the following elements:

- <app-group>

- <app>

- <code>

- <def-item>

- <def-list>

- <disp-formula>

- <fig>

- <fig-group>

- <graphic>

- <inline-code>

- <inline-formula>

- <inline-graphic>

- <legend>

- <list-item>

- <mml:math>

- <mixed-citation>

- <p>

- <ref>

- <ref-list>

- <sec>

- <std>

- <table-wrap>

- <table-wrap-foot>

- <tbx:example>

- <tbx:note>

- <tbx:termEntry>

- <tbx:tig>

- <term-sec>

- <xref>

When a cross-reference is made to an element, that element always has an ID.

IDs are generally arbitrary.

While at IEC, legacy content and the traditional publication chain have made use of semantic IDs, this is no longer guaranteed.

At ISO, the traditional production process (using eXtyles) uses semantic IDs; this will continue and will be a point of difference in the XML available from ISO/CS.

![](page=10,bbox=[237, 119, 602, 282])

## 3.5 Editorial notes

Where comments on the structure of standards (e.g. from the ISO/IEC Directives, Part 2) or other background information is provided in addition to coding instructions, it will be preceded by the words "Editorial note" and set in a light grey box, like this:

<table border="1"><tr><td>Editorial note</td></tr><tr><td>...</td></tr></table>

## 3.6 Formatting of elements and attributes

Throughout the text, XML elements are written in angle brackets and formatted in bold, attributes are prefixed by @ and formatted in italics, as illustrated below:

## <element>

@attribute

## 4 Structure

## 4.1 General

A standard or standards-type document is divided into three parts:

front matter

body

back matter

The complete document should be coded within the root <standard>. For example:

![](page=11,bbox=[239, 120, 602, 282])

```xml

<?xml version="1.0" encoding="UTF-8"?>

<standard xmlns:mml="http://www.w3.org/1998/Math/MathML" xmlns:tbx="urn:iso:std:iso:30042:ed-1"

xmlns:xlink="http://www.w3.org/1999/xlink">

    <front>

        <std-meta>

            <title-wrap xml:lang="en">

                <intro>...</intro>

                <main>...</main>

                <compl>...</compl>

                <full>...</full>

            </title-wrap>

            <title-wrap xml:lang="fr">

                <intro>...</intro>

                <main>...</main>

                <compl>...</compl>

                <full>...</full>

            </title-wrap>

            <proj-id>...</proj-id>

            <std-ident>

                <originator>ISO</originator>

                <doc-type>IS</doc-type>

                <doc-number>9512</doc-number>

                <part-number/>

                <edition>3</edition>

                <version>1</version>

            </std-ident>

            <std-org std-org-type="sdo">

                <std-org-abbrev>ISO</std-org-abbrev>

            </std-org>

            <content-language>en</content-language>

            <std-ref type="dated">ISO/DIS 9512</std-ref>

            <std-ref type="undated">ISO/DIS 9512</std-ref>

            <doc-ref>ISO/DIS 9512(en)</doc-ref>

            <release-date>2018-08-06</release-date>

            <meta-date type="vote-start">2018-08-06</meta-date>

            <meta-date type="vote-end">2018-10-29</meta-date>

            <comm-ref>ISO/TC 126/SC 1</comm-ref>

            <secretariat>AFNOR</secretariat>

            <ics>65.160</ics>

            <page-count count="18"/>

            <std-xref type="revises">

                <std-ref>ISO 9512:2002</std-ref>

            </std-xref>

            <permissions>

                <copyright-statement>All rights reserved</copyright-statement>

                <copyright-year>2018</copyright-year>

                <copyright-holder>ISO</copyright-holder>

            </permissions>

            <self-uri>...</self-uri>

            <custom-meta-group>

                <custom-meta>

                    <meta-name>special-voting-rule</meta-name>

                    <meta-value>NO FDIS BALLOT</meta-value>

                </custom-meta>

                <custom-meta>

                    <meta-name>price-ref-pages</meta-name>

                    <meta-value>18</meta-value>

                </custom-meta>

                <custom-meta>

                    <meta-name>generation-date</meta-name>

                    <meta-value>2018-06-08 07:42:48</meta-value>

                </custom-meta>

            </custom-meta-group>

        </std-meta>

```

![](page=12,bbox=[239, 119, 602, 283])

Front - ctd.

```xml

<sec id="sec_foreword" sec-type="foreword">

  <title>Foreword</title>

  <p>...</p>

</sec>

<sec id="sec_intro" sec-type="intro">

  <title>Introduction</title>

  <p>...</p>

</sec>

</front>

<body>

  <sec id="sec_1" sec-type="scope">

    <label>1</label><title>Scope</title>

    <p>...</p>

  </sec>

  <sec id="sec_2" sec-type="norm-refs">

    <label>2</label><title>Normative references</title>

    <p>...</p>

  </sec>

  <sec id="sec_3" sec-type="terms">

    <label>3</label><title>Terms, definitions, symbols and abbreviated

      terms</title>

    <p>For the purposes of this document, the following terms and definitions

      apply.</p>

  </sec>

</body>

<back>

  <app-group>

    <app content-type="informative" id="sec_A">

      <label>Annex A</label><annex-type>(informative)</annex-type>

      <title>...</title>

    ...

  </app>

  <ref-list content-type="bibl" id="sec_bibl">

    <title>Bibliography</title>

    ...

  </ref-list>

</back>

</standard>

```

## 4.2 Types of clause

Certain clause titles indicate a specific type of clause which should be reflected in the @sec-type of the <sec>, respectively in the @content-type in the back matter.

Values for @sec-type:

- in <front>: foreword, intro

- in <body> : scope, norm-refs, terms

- Values for @content-type:

- in <back>: for annexes: informative / normative; bibl

For example:

1 Scope These guidelines cover the development, implementation, maintenance, and improvement of strategies and systems for training that affect the quality of the products supplied by an organization.

is coded as:

![](page=13,bbox=[237, 119, 602, 283])

<sec id="sec_1" sec-type="scope">

    <label>1</label>

    <title>Scope</title>

    <p>These guidelines cover the development implementation, maintenance, and improvement of strategies and systems for training that affect the quality of the products supplied by an organization.</p>

</sec>

The following table lists the major clauses that are normally present in a document, how they are usually numbered and titled, and how they should be identified by the @sec-type of the <sec> or, for annexes, the @content-type of <app>:

<table border="1"><tr><td>Section</td><td>Title</td><td>type attribute</td></tr><tr><td>Unnumbered sec in front</td><td>Foreword</td><td>@sec-type=&quot;foreword&quot;</td></tr><tr><td>sec optionally numbered 0 in front</td><td>Introduction</td><td>@sec-type=&quot;intro&quot;</td></tr><tr><td>sec numbered 1 in body</td><td>Scope</td><td>@sec-type=&quot;scope&quot;</td></tr><tr><td>sec numbered 2 in body</td><td>Normative references</td><td>@sec-type=&quot;norm-refs&quot;</td></tr><tr><td>sec numbered 3 in body</td><td>Terms and definitions / Terms, definitions, ...Note: title may vary</td><td>@sec-type=&quot;terms&quot;</td></tr><tr><td>app</td><td>Annex N informative / normative</td><td>@content-type=&quot;informative&quot;or&quot;normative&quot;</td></tr><tr><td>ref-list</td><td>Bibliography</td><td>@content-type=&quot;bibl&quot;</td></tr></table>

## 4.3 Front matter

## 4.3.1 General

<front> is required in ISO/IEC standards and can comprise the following front matter:

- document-level metadata (<std-doc-meta>)

- standards organization metadata in <std-meta>

- other optional national metadata

- a foreword

- an introduction

## 4.3.2 Metadata

No organization metadata are captured within <std-doc-meta>. Instead, <std-meta> are used, with relevant titles, copyright statements, dates, etc. Organization-specific metadata in <std-

![](page=14,bbox=[239, 119, 601, 281])

meta> will override relevant data in <std-doc-meta>. This element allows for accurate capture of standards organizations' data when publishing or adopting standards.

To capture the copyright information for the current document in the metadata, the <permissions> element is used. For example:

```xml

<std-meta>

...

    <permissions>

        <copyright-statement>All rights reserved</copyright-statement>

        <copyright-year>2011</copyright-year>

        <copyright-holder>ISO</copyright-holder>

    </permissions>

</std-meta>

```

For multiple copyrights, ISO and IEC use different coding:

## ISO

All copyright statements are summed up in one <permissions> element, e.g.

<permissions>

<copyright-statement>All rights reserved</copyright-statement>

<copyright-year>2019</copyright-year>

<copyright-holder>ISO</copyright-holder>

</permissions>

Under investigation for future implementation:

ISO is investigating the inclusion of the full copyright statement.

## IEC

Copyright statements are divided into individual <permissions> elements within <std-meta>. These copyright statements must not be overwritten in adoptions!

```xml

<permissions>

  <copyright-statement>

    <inline-graphic xlink:href="asset/iso_7010_w001.png"

xmlns:xlink="http://www.w3.org/1999/xlink"/>THIS PUBLICATION IS COPYRIGHT PROTECTED

Copyright &#169; 2017 IEC, Geneva, Switzerland</copyright-statement>

  <copyright-year>2017</copyright-year>

  <copyright-holder>IEC</copyright-holder>

  <license>

    <license-p>All rights reserved. Unless otherwise specified, no part of this publication

may be reproduced or utilized in any form or by any means, electronic or mechanical,

including photocopying and microfilm, without permission in writing from either IEC or

IEC&#8217;s member National Committee in the country of the requester. If you have any

questions about IEC copyright or have an enquiry about obtaining additional rights to this

publication, please contact the address below or your local IEC member National Committee

for further information.</license-p>

  <license-p>

    <address>

      <addr-line>IEC Central Office, 3, rue de Varemb&#233;, CH-1211 Geneva 20,

Switzerland, Tel.: +41 22 919 02 11, info@iec.ch, www.iec.ch</addr-line>

    </address>

  </license-p>

  </license>

</permissions>

<permissions>

  <copyright-statement>

    <inline-graphic xlink:href="asset/iso_7010_w001.png"

```

![](page=15,bbox=[238, 119, 602, 283])

xmlns:xlink="http://www.w3.org/1999/xlink"/>COPYRIGHT PROTECTED DOCUMENT &#169; ISO

2017</copyright-statement>

<copyright-year>2017</copyright-year>

<copyright-holder>ISO</copyright-holder>

<license>

  <license-p>All rights reserved. Unless otherwise specified, or required in the context

of its implementation, no part of this publication may be reproduced or utilized otherwise

in any form or by any means, electronic or mechanical, including photocopying, or posting on

the internet or an intranet, without prior written permission. Permission can be requested

from either ISO at the address below or ISO&#8217;s member body in the country of the

requester.</license-p>

  <license-p>

    <address>

      <addr-line>ISO copyright office, CP 401 . Ch. de Blandonnet 8, CH-1214 Vernier,

Geneva, Phone: +41 22 749 01 11, Fax: +41 22 749 09 47, Email: copyright@iso.org</addr-line>

    </address>

  </license-p>

</license>

</permissions>

If specific conditions exist under which the content may be used, accessed, and distributed, the <license> element within <permissions> provides the relevant license statement or copyright conditions.

## <processing-meta>, with @custom-meta indicating the Coding Guidelines edition

A new set of metadata has been introduced with edition 2.1 of the Coding Guidelines, contained in the <processing-meta>, directly in <standard>. This element now comprises information about the XML file (as opposed to information about the standard itself).

Attributes inside <processing-meta> indicate the tag set used (interchange), the MathML version (3.0), the table model (XHTML), the terminology model (TBX), the way in which formulae are represented (MathML) and the tag set family (STS).

An additional element <custom-meta> (inside <custom-meta-group>) now indicates the edition of the Coding Guidelines according to which the XML has been tagged (with <meta-name> = coding_guidelines_edition and <meta-value> = 2.1). In the absence of <processing-meta>, the XML is assumed to be coded according to the Coding guidelines ed. 1.11.

```xml

<standard

    xmlns:mml="http://www.w3.org/1998/Math/MathML"

    xmlns:tbx="urn:iso:std:iso:30042:ed-1"

    xmlns:xlink="http://www.w3.org/1999/xlink"

    xmlns:xi="http://www.w3.org/2001/XInclude"

    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <processing-meta

        base-tagset="interchange"

        mathml-version="3.0"

        table-model="xhtml"

        terminology-model="tbx"

        math-representation="mathml"

        tagset-family="sts">

        <custom-meta-group>

            <custom-meta>

                <meta-name>iec_iso_coding_guidelines_edition</meta-name>

                <meta-value>2.1</meta-value>

            </custom-meta>

```

![](page=16,bbox=[236, 118, 602, 284])

```html

</custom-meta-group>

</processing-meta>

<front>...</front>

<body>...</body>

<back>...</back>

</standard>

```

## 4.3.3 Foreword

## Editorial note

The foreword is required and unnumbered and should contain no tables or graphics.

This is the first titled clause. It is coded as <sec>. For a more detailed description of <sec> in general, see 4.4.2.

## Attributes

@sec-type="foreword"

For example:

## Foreword

ISO (the International Organization for Standardization) is a worldwide federation of national standards bodies (ISO member bodies). The work of preparing International Standards is normally carried out through ISO technical committees. Each member body interested in a subject for which a technical committee has been established has the right to be represented on that committee. International organizations, governmental and non-governmental, in liaison with ISO, also take part in the work. ISO collaborates closely with the International Electrotechnical Commission (IEC) on all matters of electrotechnical standardization.

is coded as

<sec id="sec_foreword" sec-type="foreword">

## 4.3.4 Introduction

## Editorial note

If present, the introduction should follow the foreword and is generally not numbered. In certain cases, introductions can contain subclauses, which will then be numbered "0.1/0.2" etc.

The introduction is coded as <sec>. For a more detailed description of <sec> in general, see 4.4.2.

## Attributes

@sec-type="intro"

![](page=17,bbox=[237, 119, 602, 282])

## 4.4 Body

## 4.4.1 General

The main textual portion of a standards document is captured in the <body> tag. The <body> is required in ISO/IEC documents.

It contains multiple clauses and subclauses (henceforth both will be referred to as "clauses" in this document, unless the differentiation is important). Clauses must be captured in <sec>, usually starting with clause 1 (normally "Scope"), followed by other sequentially and hierarchically numbered clauses.

For example: clauses 1.2.1 and 1.2.2 are within clause 1.2, which is within clause 1.

## 4.4.2 Clauses and subclauses

## Editorial note

Usually, each clause has a title and a sequential number according to its hierarchical position in the document. Some subclauses do not have a title (see Numbered paragraphs).

Clauses are captured in a <sec> tag. They can contain the following:

- any type of content (text, table, graphic)

subclauses

The clause number is coded as a <label> within <sec>.

The title of the clause is coded as a <title> within <sec>.

## Attributes

@sec-type is dependent on the clause type (see Clauses and subclauses)

For example:

## 5 Requirements for information for thermal simulation

## 5.1 Requirements for bare die with or without added connection structures

## 5.1.1 General

This clause covers the requirements for bare die with or without added connection structures. The following information shall be given as a minimum together with any information needed to satisfy a specific thermal simulation model.

is coded as:

```html

<label>5</label>

<title>Requirements for information for thermal simulation</title>

<sec id="sec-5.1">

<label>5.1</label>

<title>Requirements for bare die with or without added connection structures</title>

```

![](page=18,bbox=[237, 119, 602, 283])

<sec id="sec-5.1.1">

<label>5.1.1</label>

<title>General</title>

<p id="p-42">This clause covers the requirements for bare die with or without added connection structures. The following information shall be given as a minimum together with any information needed to satisfy a specific thermal simulation model.</p></sec>

## Scope

## Editorial note

The Scope clause is required and is numbered 1.

## Attributes

@sec-type="scope"

For example:

Mechanical vibration and shock — Evaluation of human exposure to whole-body vibration —

Part 1:

General requirements

1 Scope

This part of ISO 2631 defines methods for the measurement of periodic, random and transient whole-body vibration. It indicates the principal factors that combine to determine the degree to which a vibration exposure will be acceptable. Informative annexes indicate current opinion and provide guidance on the possible effects of vibration on health, comfort and perception and motion sickness. The frequency range considered is

— 0,5 Hz to 80 Hz for health, comfort and perception, and

— 0,1 Hz to 0,5 Hz for motion sickness.

Although the potential effects on human performance are not covered, most of the guidance on whole-body vibration measurement also applies to this area. This part of ISO 2631 also defines the principles of preferred methods of mounting transducers for determining human exposure. It does not apply to the evaluation of extreme-magnitude single shocks such as occur in vehicle accidents.

This part of ISO 2631 is applicable to motions transmitted to the human body as a whole through the supporting surfaces: the feet of a standing person, the buttocks, back and feet of a seated person or the supporting area of a recumbent person. This type of vibration is found in vehicles, in machinery, in buildings and in the vicinity of working machinery.

## is coded as:

```xml

<sec id="sec_1" sec-type="scope">

    <label>1</label><title>Scope</title>

    <p>This part of <std>ISO 2631</std> defines methods for the measurement of periodic,

random...considered is</p>

    <list list-type="bullet">

        <list-item><label>—</label><p>0,5 Hz to 80 Hz for health, comfort and percepetion,

and</p></list-item>

        <list-item><label>—</label><p>0,1 Hz to 0,5 Hz for motion sickness.</p></list-item>

    </list>

    <p>Although the potential effects on human performance... in vehicle accidents.</p>

    <p>This part of <std>ISO 2631</std> is applicable to...working machinery.</p>

</sec>

```

![](page=19,bbox=[239, 119, 602, 282])

## Normative References

## Editorial note

The Normative references clause is required and is numbered 2.

If there are no normative references, the ISO/IEC Directives state that the section should still contain a paragraph to that effect (i.e. stating that there are no normative references for that particular document).

## References to standards

Normative references are coded as a <ref-list> with @content-type="norm-refs" and each reference as a <ref> containing a <std>.

Each <std> contains an <std-id> with @std-id-link-type="urn" and @std-id-type either "dated" or "undated", depending on whether the cited standard is dated or not. The standard reference is contained in <std-ref> and the title in <title> inside <std>.

Punctuation between the elements within <ref-list> is not captured in the XML, it will need to be rendered in the output according to house style.

## For example:

![](page=19,bbox=[431, 1372, 1644, 2017])

## is coded as:

![](page=20,bbox=[238, 119, 603, 283])

```xml

<sec id="sec-2" sec-type="norm-refs">

    <label>2</label>

    <title>Normative references</title>

    <p>The following documents are referred to in the text in such a way that some or all of

        their content constitutes requirements of this document. For dated references, only

        the edition cited applies. For undated references, the latest edition of the

        referenced document (including any amendments) applies. </p>

    <ref-list content-type="norm-refs">

        <ref id="id-1c4570ad-303a-4e29-8d6e-d33c10d0f731">

            <std>

                <std-id std-id-link-type="urn" std-id-type="undated"

                    >urn:iec:std:iec:60050-581::::</std-id>

                <std-ref>IEC 60050-581</std-ref>

                <title>International Electrotechnical Vocabulary (IEV) - Part 581:

                    Electromechanical components for electronic equipment</title>

            </std>

        </ref>

        <ref id="id-e68a18c7-5287-4163-8f26-be5f45925df2">

            <std>

                <std-id std-id-link-type="urn" std-id-type="undated"

                    >urn:iec:std:iec:60512-1::::</std-id>

                <std-ref>IEC 60512-1</std-ref>

                <title>Connectors for electronic equipment - Tests and measurements -

                    Part 1: Generic specification</title>

            </std>

        </ref>

```

## References that are not standards

A reference in the normative reference section that is not a standard is coded as it appears (including formatting) using <mixed-citation>.

For example:

W3C XML 1.0:2000, Extensible Markup Language (XML) 1.0 (Second Edition), W3C Recommendation. Copyright [6 October 2000] World Wide Web Consortium (Massachusetts Institute of Technology, Institut National de Recherche en Informatique et en Automatique, Keio University)

is coded as:

<ref id="id-287ab371-ca18-419a-b209-3a98f0d3052f">

<mixed-citation>W3C XML 1.0:2000, Extensible Markup Language (XML) 1.0 (Second Edition), W3C Recommendation. Copyright [6 October 2000] World Wide Web Consortium (Massachusetts Institute of Technology, Institut National de Recherche en Informatique et en Automatique, Keio University)</mixed-citation>

</ref>

## Terms and definitions

## Editorial note

The terms and definitions clause is a required clause in a standard. Its title may vary but will normally contain the words "Terms" and "Definitions". If there are no terms and definitions in the clause, a statement to that effect is provided.

![](page=21,bbox=[239, 118, 602, 282])

## Attributes of <sec>

@sec-type="terms"

Subclauses to the terms and definitions (e.g. to group terms, or subclauses containing abbreviations or symbols) are coded as any other clause. See 9 for more detailed coding of this section.

## Numbered paragraphs

## Editorial note

Numbered paragraphs are essentially sections without a title, where the text follows the label directly.

@sec-type="numbered-paragraph"

Numbered paragraphs are tagged as sections without a title.

For example:

<table border="1"><tr><td colspan="2">5 Notation</td></tr><tr><td colspan="2">5.1 This Recommendation International Standard references the notation defined by ITU-T Rec. X.680 ISO/IEC 8824-1, ITU-T Rec. X.682 ISO/IEC 8824-3, W3C XML 1.0 and W3C XML Schema.</td></tr><tr><td colspan="2">5.2 When it is necessary in the body of this Recommendation International Standard to specify either formally or in examples, the assignment of XER encoding instructions, the type prefix notation is generally used(but see 6.3 and 6.4). In Annex A, an XER encoding control section is used.</td></tr><tr><td colspan="2">5.3 In this Recommendation International Standard, bold Courier is used for ASN.1 notation and bold Arial is used for XSD notation and for XSD terms and concepts.</td></tr><tr><td colspan="2">5.4 The XSD Schemas used in the examples in this Recommendation International Standard use the prefix xsd: to identify the XSD namespace.</td></tr></table>

is coded as:

![](page=22,bbox=[238, 119, 602, 283])

```xml

<sec id="sec_5">

    <label>5</label>

    <title>Notation</title>

    <sec sec-type="numbered-paragraph" id="sec_5.1">

        <label>5.1</label>

        <p>This Recommendation | International Standard references the notation defined by

<std std-id="iso:std:iso-iec:8824:-1" type="undated"><std-ref>ITU-T Rec. X.680</std-ref> |

<std-ref>ISO/IEC 8824-1</std-ref></std>, <std std-id="iso:std:iso-iec:8824:-3"

type="undated"><std-ref>ITU-T Rec. X.682</std-ref> | <std-ref>ISO/IEC 8824-3</std-ref></std>,

W3C XML 1.0 and W3C XML Schema.</p>

    </sec>

    <sec sec-type="numbered-paragraph" id="sec_5.2">

        <label>5.2</label>

        <p>When it is necessary in the body of this Recommendation | International Standard

to specify, either formally or in examples, the assignment of XER encoding instructions, the

type prefix notation is generally used (but see <xref ref-type="sec" rid="sec_6.3">6.3</xref>

and <xref ref-type="sec" rid="sec_6.4">6.4</xref>). In <xref ref-type="app" rid="sec_A">Annex

A</xref>, an XER encoding control section is used.</p>

    </sec>

    <sec sec-type="numbered-paragraph" id="sec_5.3">

        <label>5.3</label>

        <p>In this Recommendation | International Standard, <styled-content style="font-

weight: bold; font-family: courier, monospace">bold courier</styled-content> is used for ASN.1

notation and <styled-content style="font-weight: bold; font-family: Arial, sans-serif">bold

Arial</styled-content> is used for XSD notation and for XSD terms and concepts.</p>

    </sec>

    <sec sec-type="numbered-paragraph" id="sec_5.4">

        <label>5.4</label>

        <p>The XSD Schemas used in the examples in this Recommendation | International

Standard use the prefix <styled-content style="font-weight: bold; font-family: Arial, sans-

serif">xsd:</styled-content> to identify the XSD namespace.</p>

    </sec>

</sec>

```

## 4.5 Back matter

## 4.5.1 General

The back matter is optional and tagged as <back>. It can contain annexes and a bibliography.

## Annexes

All annexes are coded as <app> within an <app-group>. @content-type can be "informative" or "normative".

The word "Annex" and the annex number are coded using <label>, and the annex title is contained in <title>.

The annex type needs to be derived from @content-type on rendering.

## Clauses inside annexes

Clauses inside an annex (A.1, A.1.2 etc.) are tagged as <sec>. (For a more detailed description of <sec> in general, see 4.4.2.)

Their <label> inherits the label prefix of the parent annex, e.g. A.1, A.2, A.3.

For example:

![](page=23,bbox=[240, 119, 603, 282])

## Annex A (informative)

<div align="center">

# Consolidating facility-level data to the organization level

</div>

## A.1 General

In developing its GHG quantification and reporting system, an organization should ensure that the data system is capable of meeting a range of reporting requirements. GHG data should be recorded and quantified by source, sink and type at least to the facility level. Such data should be retained in its disaggregated form to provide maximum flexibility in meeting a range of reporting requirements. Consolidation of the information can then be carried out as required.

is coded as:

```html

<back>

    <app-group>

        <app content-type="informative" id="sec_A">

            <label>Annex A</label>

            <title>Consolidating facility-level data to the organization level</title>

            <sec id="sec_A.1">

                <label>A.1</label>

                <title>General</title>

                <p>In developing its GHG quantification and reporting system, an organization should ensure that the data system is capable of meeting a range of reporting requirements. GHG data should be recorded and quantified by source, sink and type at least to the facility level. Such data should be retained in its disaggregated form to provide maximum flexibility in meeting a range of reporting requirements. Consolidation of the information can then be carried out as required.</p>

            ...

        </sec>

        ...

```

## 4.5.2 Bibliography

The bibliography is the last element in the document back matter. It is coded as a <ref-list>with @content-type="bibl".

When there are no bibliographical references in the text, the bibliography will look like this:

```xml

<ref-list content-type="bibl" id="id-aa7ab8bc-90ee-4c82-8973-7601e6dfb158">

  <title>Bibliography</title>

  <p>There are no bibliographic references in this document.</p>

</ref-list>

```

References inside the bibliography are tagged inside <ref>, either as <std> (for standards documents) or as <mixed-citation> (for other documents).

The rules for references as described in Normative References above apply.

![](page=24,bbox=[240, 119, 601, 281])

## Author names and other information in a reference

Author names and other details are not coded at any level of granularity, all the information is within <mixed-citation>.

For example:

## Bibliography

![](page=24,bbox=[521, 757, 553, 799])

Alexander S.J., Cotzin M., Klee J.B., Wendt G.R. Studies of motion sickness: XVI; The effects upon sickness rates of waves and various frequencies but identical acceleration. Journal of Experimental Psychology, 37, 1947, pp.440-447.

is coded as:

<title>

"Bibliography"

</title>

<ref id="id-cdff4c49-08b8-458f-96d5-b875db38a8d3">

<mixed-citation>

"Alexander S.J., Cotzin M., Klee J.B., Wendt G.R. Studies of motion sickness: XVI; The effects upon sickness rates of waves and various frequencies but identical acceleration. Journal of Experimental Psychology, 37, 1947, pp.440-447."

</mixed-citation>

</ref>

## 5 Content

## 5.1 Spaces, punctuation and formatting

In OSD, it is no longer possible to use spaces and tabs to format text. Other possibilities for laying out content have been implemented.

Direct formatting is still possible and will appear in the XML, but options are limited to

<table border="1"><tr><td>bold</td><td>bold</td></tr><tr><td>italics</td><td>italic</td></tr><tr><td>underline</td><td>underline</td></tr><tr><td>strikethrough</td><td>strike</td></tr><tr><td>monospace</td><td>monospace</td></tr><tr><td>subscript</td><td>sub</td></tr><tr><td>superscript</td><td>super</td></tr></table>

![](page=25,bbox=[238, 119, 602, 281])

## 5.2 Using <label> and <title>

<label> is used for numbers at the beginning of elements such as formulae, list items or figures.

<title> is used for designations of elements such as sections, figures, tables, etc.

Labels and section titles are bolded automatically during rendering, but italic and underline formatting are marked up. For the specific use of these two elements, please refer to the parent element (e.g. <figure>, <sec>, <list>) in this document.

## 5.3 Using <p>

General body text is captured within the <p> element.

## 5.4 Symbols - non-alphanumeric

Specific symbols are encoded the respective entity in UTF-8.

## 5.5 Symbols for variable quantities

Symbols for variable quantities are tagged in <named-content> with @content-type="variable" in the flow text. MathML does not provide this possibility, and therefore these symbols are not marked up specifically in MathML formulae.

Some examples:

<table border="1"><tr><td>Variable with no sub or superscript:</td><td>x</td><td>&lt;named-content content-type=&quot;variable&quot;&gt;x&lt;/named-content&gt;</td></tr><tr><td>Variable with number sub or superscript:</td><td>x2</td><td>&lt;named-content content-type=&quot;variable&quot;&gt;x&lt;/sup&gt;2&lt;/sup&gt;&lt;/named-content&gt;</td></tr><tr><td>Variable with variable sub or superscript:</td><td>xy</td><td>&lt;named-content content-type=&quot;variable&quot;&gt;x&lt;/sub&gt;y&lt;/sub&gt;&lt;/named-content&gt;</td></tr><tr><td>Variable with non-variable/constant sub or superscript:</td><td>xb</td><td>&lt;named-content content-type=&quot;variable&quot;&gt;x&lt;/named-content&gt;&lt;/sub&gt;b&lt;/sub&gt;</td></tr></table>

## 5.6 Notes, examples and warnings

## Editorial note

Notes are prefixed by the word NOTE (followed by a number where there is more than one sequential note in a clause).

Examples are prefixed by the word EXAMPLE (followed by a number where there is more than one sequential example in a clause).

![](page=26,bbox=[238, 119, 602, 282])

Notes and examples in regular text are tagged as <non-normative-note> and <non-normative example> respectively. Warnings are notes with the label "WARNING" and @content type = "warning". They are not numbered.

Notes and examples inside terminological entries are coded using TBX according to the coding instructions for terms and definitions (see 9.2.4, Examples in terminology or 9.2.5, Notes in terminology).

For notes inside tables, figures and formulae, see the respective section.

The designation text, NOTE, EXAMPLE or WARNING, including any numbers or punctuation, is captured in a <label>, retaining the capitalisation.

The note text is coded with the usual elements used within <sec>, e.g. <p>, <list> etc.

For example:

NOTE 1 Positional accuracy of the Patient Support includes both positioning and backlash evaluation.

is coded as:

```html

<non-normative-note id="id-6cc74b48-7513-4c74-9194-2858a9f2d8c1">

    <label>NOTE 1</label>

    <p id="p-65">Positional accuracy of the Patient Support includes both

        positioning and backlash evaluation,</p>

</non-normative-note>

```

## 5.7 Lists

Lists are coded using <list>, with each list item tagged as <list-item>.

Values and usage of @list-type:

For ordered lists:

- alpha-lower

- arabic

- roman-lower

- For unordered lists:

- dash

- bullet

## Editorial note

OSD has been configured to attribute @list-type to list items automatically, based on their hierarchical position (level of indent). The order of values is unchangeable and is always alpha- lower, roman-lower, arabic (and then repeats) for ordered lists, and dash, bullet (then repeats) for unordered lists.

![](page=27,bbox=[238, 119, 601, 281])

In OSD, there is no <list> with @list-type value simple or roman-upper. These values only exists in the XML coming from the traditional production chains at ISO and IEC.

All lists are coded outside the preceding <p>].

## 5.7.1 Lists with labels (ordered lists)

Ordered lists have one of three list types:

-alpha-lower

arabic

- roman-lower

The @list-type is indicated at the list level (with each change of indentation or hierarchical level starting a new list). Within each <list-item> the actual number / letter is captured in <label>, to provide unambiguous human-readable references. Any rendering of ordered lists should therefore be done on the basis of labels. The text of the list item is tagged inside <p>.

Example of an ordered list:

The measurement procedure and conditions shall be as follows. The voltage profile between the LIC terminals in the measurement shall be as shown in Figure 2.

a) Test, measurement and recording:

1) Measure and record the voltage-time characteristics between the LIC terminals:

i) Sampling and recording interval $ \Delta T $ s shall be set to 0,1 s.

ii) Sampling and recording shall be conducted continuously from charge start time to the time to reach rated lower limit voltage UL.

is coded as:

<p id="id-9d963d4e-9c4f-469b-efdb-ed13a140ada7">The measurement procedure and conditions shall be as follows. The voltage profile between the LIC terminals in the measurement shall be as shown in Figure 2.</p>

<list list-type="alpha-lower">

    <list-item id="id-336ec97a-d667-47f9-a4bc-db97e4a77a7c">

        <label>a)</label>

        <p id="id-278703b9-2a21-459f-e17c-66d46cd989b9">Test, measurement and recording:</p>

        <list list-type="arabic">

            <list-item id="id-cd567193-4b1d-449b-e4c9-1e51c3c1e16b">

                <label>1)</label>

                <p id="id-4ac3a931-c890-497a-fa55-327b9347bc71">Measure and record the voltage-time characteristics between the LIC terminals:</p>

                <list list-type="roman-lower">

                    <list-item id="id-dcf1295c-6a49-435b-9e44-5f32fa4f3360">

                        <label>i)</label>

                        <p id="id-3c357fc0-1b8d-479e-9e82-d5c3be31430a">Sampling and recording interval <italic>ΔT</italic>s shall be set to 0,1 s.</p>

                    </list-item>

                    <list-item id="id-9473ee24-0df9-4d2e-9da4-e2e81bd619f9">

                        <label>ii)</label>

                        <p id="id-49aa5c0d-01b7-44f4-d04f-43522ac3f89e">Sampling and recording shall be conducted continuously from charge

![](page=28,bbox=[238, 118, 603, 284])

```html

start time to the time to reach rated lower limit

voltage <italic>U</italic>L.</p>

</list-item>

</list>

</list-item>

</list>

</list-item>

</list>

```

## 5.7.2 Lists without labels (unordered lists)

Unordered lists have one of two list types:

- dash

bullet

The @list-type is indicated at the list level (with each change of indentation or hierarchical level starting a new list). The label for unordered lists is not present in the XML. It needs to be derived from the @list-type on rendering.

Example of an unordered list:

## 6.3 Irradiation

- Description of the radiation source:

- Type, activity or beam power, kind and energy spectrum of radiation. For reactor irradiation, the proportion of y-rays, thermal, epithermal and fast neutrons.

- Specification of the absorbed dose:

- Method of dosimetry, absorbed dose rates (with tolerances), period of irradiation and absorbed dose of the different specimens. For accelerators, list pulse repetition rate, pulse length and maximum flux density. Also list the traverse cycle of the specimen and "in-time" and "out-time".

- For reactors and other neutron sources, make the calculation of absorbed dose rate on the basis of the flux density, determined separately for thermal, epithermal and fast neutrons, and for y-rays.

- Conditioning and irradiation procedure, including pertinent details, for example temperature, atmosphere or medium, pressure, stress on specimen, container.

is coded as:

![](page=29,bbox=[238, 119, 603, 283])

```xml

<sec id="sec-6.3">

    <label>6.4</label>

    <title>Irradiation</title>

    <list id="list-6.3-L1" list-type="dash">

        <list-item id="lis-6.3-L1-1">

            <p id="p-126">Description of the radiation source:</p>

            <list id="list-6.3-L1" list-type="bullet">

                <list-item id="id-c284644e-4201-486f-8318-51165bdfa568">

                    <p id="p-127">Type, activity or beam power, kind and energy spectrum

                        of radiation. For reactor irradiation, the proportion of γ-rays,

                        thermal, epithermal and fast neutrons.</p>

                </list-item>

            </list>

        </list-item>

        <list-item id="lis-6.3-L1-2">

            <label/>

            <p id="p-128">Specification of the absorbed dose:</p>

            <list id="list-6.3-L1" list-type="bullet">

                <list-item id="id-a6d8f5d0-e0c8-4387-d008-97f8a551bb16">

                    <p id="p-129">Method of dosimetry, absorbed dose rates (with

                        tolerances), period of irradiation and absorbed dose of the

                        different specimens. For accelerators, list pulse repetition

                        rate, pulse length and maximum flux density. Also list the

                        traverse cycle of the specimen and "in-time" and "out-time".</p>

                </list-item>

                <list-item id="id-5fe19a5e-1285-47c4-ded1-f9bef4b53257">

                    <p id="p-130">For reactors and other neutron sources, make the

                        calculation of absorbed dose rate on the basis of the flux

                        density, determined separately for thermal, epithermal and fast

                        neutrons, and for γ-rays.</p>

                </list-item>

            </list>

        </list-item>

        <list-item id="lis-6.3-L1-3">

            <label/>

            <p id="p-131">Conditioning and irradiation procedure, including pertinent

                details, for example temperature, atmosphere or medium, pressure, stress

                on specimen, container.</p>

        </list-item>

    </list>

```

Note: in the above example, the ID contains the value "sec-6.3" but the label indicates subclause 6.4. This is correct tagging and due to the fact that legacy XML is imported as the basis for new projects. While new IDs are generated arbitrarily, old IDs will still remain but can no longer be relied upon as indicating the position of an element inside the document.

## 5.8 Specific text alignments

Text that is aligned in columns and without column or row borders can be laid out inside <array> containing a <table> (see also Tables for details on coding tables).

This type of table layout for formatting purposes does not have the various attributes associated with formal tables (no <table-wrap>, <caption>, <title>, <label> etc.). The table only has information on cell styling and column width.

@colwidth specifies the column width in percent - with " % " after the value.

For example:

![](page=0,bbox=[241, 119, 601, 281])

item this is an item

object this is an object

thing this is a thing

is coded as:

```html

<array>

    <table>

        <col align=center col width="15%">

        <col align=center col width="30%">

        <col align=center col width="45%">

        <tbody>

            <tr><td/><td>item</td><td>this is an item</td></tr>

            <tr><td/><td>object</td><td>this is an object</td></tr>

            <tr><td/><td>thing</td><td>this is a thing</td></tr>

        </tbody>

    </table>

</array>

```

## 5.9 Quotations

A single block of text that is indented (normally an extract or extended quote from another work that is made typographically distinct from the surrounding text) is coded using <disp-quote>. The source of the quote can be captured using <attrib> with @specific-use="source" and any permissions information can be captured using <permissions> within <disp-quote>.

<sec>

    <title>Introduction</title>

    <disp-quote>

        <p>Dead flies cause the ointment of the apothecary to send forth a stinking savour; so doth a little folly him that is in reputation for wisdom and honour.</p>

        <attrib specific-use="source">Ecclesiastes 10:1</attrib>

    </disp-quote>

    <p>The term &ldquo;flies in the ointment&rdquo; is occasionally used to describe minor defects in some endeavour. But this quote from Ecclesiastes has a much wider scope ...</p>

</sec>

## 5.10 Graphics

## Editorial note

Graphics can exist inside figures (in the sense of structural elements, as defined in the ISO/IEC Directives Part 2), but also independently, either as block elements or as inline graphics. For information on tagging figures, see 8.

Graphics inside figures or as independent block elements are coded as <graphic>.

Graphics in the same line as the surrounding text are coded as <inline-graphic>.

![](page=1,bbox=[239, 119, 602, 281])

## Attributes of <graphic> and <inline-graphic>

@xlink:href containing the reference to the graphic file, without the file extension (e.g. ".png").

<table border="1"><tr><td>ISO
The reference does not contain the name of the asset folder for formal figures.</td></tr><tr><td>&lt;graphic xlink:href="fig_A.1"/&gt;</td></tr><tr><td>IEC
The reference contains the name of the asset folder.</td></tr><tr><td>&lt;graphic xlink:href="asset/fig-A.1"/&gt;</td></tr></table>

@specific-use (optional) containing an indication of the relative size of the graphic:

<table border="1"><tr><td>value of@specific-use</td><td>occurring on</td><td>recommended rendering dimensions forA4 paper-based output</td></tr><tr><td>size:T(for&quot;thumbnail&quot;)</td><td>&lt;graphic&gt;(not enabled on&lt;inline-graphic&gt;)</td><td>20mm wide</td></tr><tr><td rowspan="2">size:S</td><td>&lt;graphic&gt;</td><td>40mm wide</td></tr><tr><td>&lt;inline-graphic&gt;</td><td>single line height</td></tr><tr><td rowspan="2">size:M</td><td>&lt;graphic&gt;</td><td>80mm wide</td></tr><tr><td>&lt;inline-graphic&gt;</td><td>double line height</td></tr><tr><td rowspan="2">size:L</td><td>&lt;graphic&gt;</td><td>160mm wide</td></tr><tr><td>&lt;inline-graphic&gt;</td><td>triple line height</td></tr></table>

## 5.11 Code

Technical content such as programming language code, pseudo-code, schemas and DTDs or markup fragments should be tagged as <inline-code> if it is in line with surrounding text, or as <code> in the case of code blocks. Whitespace will be preserved within <code>/<inline-code>. Rendering should be done with monospace characters.

For example:

![](page=2,bbox=[239, 119, 602, 282])

simple_line = (symbol_definition | collating_element | weight_assignment |

order_end)? line_completion ; table_line = simple_line |

tailoring_line ; tailoring_line = (reorder_after | order_start |

reorder_end | section_definition | reorder_section_after) line_completion ;

is coded as:

```html

<code id="id-a3d9f76d-3032-4e90-86e8-866d6bb1ea5c">simple_line = (symbol_definition |

collating_element | weight_assignment | order_end)? line_completion ; table_line = simple_line |

tailoring_line ; tailoring_line = (reorder_after | order_start | reorder_end

section_definition | reorder_section_after)line_completion ;</code>

```

## Future attributes of <code> (planned for 2025)

- @language - Code Language

- @language-version - Code Language Version

Once this is implemented in OSD, authors will be encouraged to make use of these attributes wherever possible and applicable.

## 6 Tables

## 6.1 General

Tables are coded using XHTML.

Nested tables are not permitted.

The width of the table can be determined with @width and the values indicating the desired width of the table on a page: 33%, 66%, 100%. If there is no indication of @width it means that no specific width is required.

The width of table columns is defined using @width inside <col> within <table>.

## 6.2 Formal and informal tables

## 6.2.1 Informal tables

An informal table does not have a caption (label and title) and is captured as a <table> in <array>. It is mostly used to contain structured information presented in tabular format. Its use for keys to formulae is deprecated and has been replaced by <legend>.

## 6.2.2 Formal tables

A formal table consists of a table with a label and a title, captured within <table-wrap>.

A table designation is placed above formal tables, e.g. "Table 1- Alphabetical list of definitions".

The two elements that make up the designation, label ("Table 1") and title ("Alphabetical list of definitions "), are tagged inside two different hierarchical elements:

![](page=3,bbox=[237, 119, 601, 282])

- Directly below <table-wrap>, <label> contains the label, without punctuation;

- inside a <caption> element, <title> contains the title.

For example:

```html

<table-wrap id="tab-1">

<label>Table 1</label>

<caption>

<title>Alphabetical list of definitions</title></caption>

<table>...

```

## Table headers & footers

Table headers and footers are coded in <thead> and <table-wrap-foot> respectively.

## Table notes and footnotes

Table notes and footnotes (as well as any other content in a table footer) are coded inside <table-wrap> within <table-wrap-foot>.

Footnotes are coded in <fn>, notes as <non-normative-note>, other contents inside <p>.

References to table footnotes (footnotes that are associated with the table and contained within <table-wrap>) are contained in <xref> with @ref-type="table-fn".

## Notes in tables

Notes in tables can appear inside a cell (inside <td>) or after the last row of the table (inside <table-wrap-foot>).

For example:

<div align="center">

Table E-1 - Meaning of sample aspect ratio indicator

</div>

<table border="1"><tr><td>aspect_ratio_idc</td><td>Sample aspect ratio</td><td>(informative)Examples of use</td></tr><tr><td>0</td><td>Unspecified</td><td></td></tr><tr><td>1</td><td>1:1(“square”)</td><td>1280x720 16:9 frame without horizontal overscan1920x1080 16:9 frame without horizontal overscan(cropped from1920x1088)640x480 4:3 frame without horizontal overscan</td></tr><tr><td>2</td><td>12:11</td><td>720x576 4:3 frame with horizontal overscan352x288 4:3 frame without horizontal overscan</td></tr></table>

NOTE 1- For the examples in Table E-1, the term "without horizontal overscan" refers to display processes in which the display area matches the area of the cropped decoded pictures and the term "with horizontal overscan" refers to display processes in which some parts near the left and/or right border of the cropped decoded pictures are not visible in the display area. As an example, the entry "720x576 4:3 frame with horizontal overscan" for aspect ratio idc equal to 2 refers to having an area of 704x576 luma samples (which has an aspect ratio of 4:3) of the cropped decoded frame (720x576 luma samples) that is visible in the display area.

is coded as:

![](page=4,bbox=[239, 119, 602, 282])

```html

<table-wrap id="tab_E-1">

  <label>Table E-1</label><caption><title>Meaning of sample aspect ratio

indicator</title></caption>

  <table border="1" frame="box" rules="all">

    <thead>

      <tr>

        <th>aspect...</th>

      ...

    </tr>

  </thead>

  <tbody>

    <tr>

      <td>0...</td>

    ...

    </tr>

    ...

  </tbody>

</table>

<table-wrap-foot>

  <non-normative-note><label>NOTE 1 -</label><p>For examples in...</p></non-normative-

note>

  </table-wrap-foot>

</table-wrap>

```

## Unit statements in table headers

When units used in a column are indicated in a table header, these are coded in a separate <p>, inside <th> elements. <bold> is generally applied to <th> but is removed for the unit statement.

For example:

<div align="center">

Table 6 - Limit of temperature of the cooling medium for indoor equipment

</div>

<table border="1"><tr><td rowspan="2">Conditions</td><td rowspan="2">Cooling medium</td><td>Minimum</td><td>Maximum</td></tr><tr><td>℃</td><td>℃</td></tr><tr><td rowspan="3">Temporary extreme temperatures of the cooling medium</td><td>Air</td><td>0</td><td>40</td></tr><tr><td>Water</td><td>+5</td><td>30</td></tr><tr><td>Oil</td><td>-5</td><td>30</td></tr><tr><td>Daily average</td><td>Air</td><td></td><td>30</td></tr><tr><td>Yearly average</td><td>Air</td><td></td><td>25</td></tr></table>

is coded as:

```html

<table-wrap id="tab-6">

<label>Table&#160;6</label>

<caption>

<title>Limit of temperature of the cooling medium for indoor equipment</title></caption>

<table>

<col align="left" valign="top" width="44%"/>

<col align="center" valign="middle" width="20%"/>

<col align="center" valign="middle" width="18%"/>

<col align="center" valign="middle" width="18%"/>

<thead>

<tr>

<th>

<p><bold>Conditions</bold></p>

</th>

<th>

<p><bold>Cooling medium</bold></p>

</th>

<th>

```

![](page=5,bbox=[237, 119, 602, 283])

```html

<p><bold>Minimum</bold></p>

<p>°C</p>

</th>

<th>

<p><bold>Maximum</bold></p>

<p>°C</p>

</th>

</tr>

</thead>

...

```

## Unit statements for the entire table

When a table contains text describing the units used in the table it is captured as <p> with @content-type="dimension" in <table-wrap-foot>.

For example:

<table border="1"><tr><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td></tr><tr><td>Designation</td><td>Quality</td><td>C
max.</td><td>Mn
max.</td><td>P
max.</td><td>S
max.</td><td>Si$^{a}$</td></tr><tr><td>HRA</td><td>Commercial</td><td>0,15</td><td>0,70</td><td>0,045</td><td>0,035</td><td>-</td></tr></table>

## is coded as:

```html

<table-wrap id="id-538f0d6b-7cad-47ce-f510-5069d62a3c7f">

  <label>Table C.1</label>

  <caption>

    <title>Chemical composition - Heat analysis</title>

  </caption>

  <table border="1">

    <col width="16.00%"/>

    <col width="17.00%"/>

    <col width="13.00%"/>

    <col width="14.00%"/>

    <col width="14.00%"/>

    <col width="13.00%"/>

    <col width="11.00%"/>

    <thead>

      <tr>

        <th align="center" valign="top">

          <p>

            <bold>Designation</bold>

          </p>

        </th>

        <th align="center" valign="top">

          <p>

            <bold>Quality</bold>

          </p>

        </th>

```

![](page=6,bbox=[238, 119, 602, 284])

```html

<th align="center" valign="top">

    <p>

        <bold>C</bold>

    </p>

    <p>max.</p>

</th>

<th align="center" valign="top">

    <p>

        <bold>Mn</bold>

    </p>

    <p>max.</p>

</th>

<th align="center" valign="top">

    <p>

        <bold>P</bold>

    </p>

    <p>max.</p>

</th>

<th align="center" valign="top">

    <p>

        <bold>S</bold>

    </p>

    <p>max.</p>

</th>

<th align="center" valign="top">

    <p>

        <bold>Si</bold>

        <sup>a</sup>

    </p>

</th>

</tr>

</thead>

<tbody>...

</tbody>

</table>

<table-wrap-foot>

    <p content-type="dimension">Mass fractions in per cent</p>

</table-wrap-foot>

</table-wrap>

```

## 6.3 Table cell styling

The table styling is indicated at the table level.

Default values for borders are solid lines of 1px width, with no background colour.

It is possible to customise these values for the whole table or for individual cells, lines and columns. Any deviations from the default styling are indicated at the cell level.

## 6.3.1 Alignment

@align is used for horizontal alignment and @valign for vertical alignment.

Possible values for @align:

- left (default)

- center

right

justify

![](page=7,bbox=[237, 119, 602, 282])

Possible values for @valign:

- top (default)

middle

bottom

## 6.3.2 @style for borders and background colour

## Borders

The width and style of individual cell borders can be different from that of the table as a whole and can also vary for each border. @style is used to describe all borders in sequence (order: border-left, border-top, border-right, border-bottom), indicating all values for each before moving on to next (and only if they deviate from the values at the table level).

Borders between adjacent cells have identical values for both cells concerned.

Type / style of border

When a border is present, its style ("border-style") is indicated with one of these values:

- solid

- dashed

- dotted

The words "border-style" are dropped, only the value is given.

## Border width

When a border is present, its width ("border-width") is indicated in px. Preferred values are 1 to 5px.

The words "border-width" are dropped, only the value is given.

## Background colour

If a cell has a background colour, it is indicated in the value "background-color", in hexadecimal values. It is dropped if no background colour is used, except for cases where the table has a background colour defined at the table level - in those cases, the cells with no background colour have the value background-color "none".

## Preferred values for background-color:

- #EFEFEF - lighter grey

- #D4D4D4 - grey

- #BCBCBC - darker grey

## Example:

example cell

![](page=8,bbox=[238, 119, 601, 282])

This cell would be coded as:

```html

<td style="border-left: solid 1px; border-top=dotted 3px; border-right: none; border-bottom=dashed

5px; background-color=#EFEFEF" align="center" valign="top">example cell</td>

```

## 6.4 Merged cells

Merged cells are captured by @rowspan or @colspan in <td> within <table> . The value of @rowspan or @colspan is the number of rows and columns being merged.

For example:

<div align="center">

Table A.3 Speed Engine or Ground Speed

</div>

<table border="1"><tr><td>Control type</td><td>Location</td><td>Operation requirements and examples</td></tr><tr><td>Hand-operated single lever control</td><td>At the option of the manufacturer</td><td>Forward or downward motion shall increase speed.Rearward or upward motion shall decrease speed.</td></tr><tr><td>Finger-operated buttons</td><td>At the option of the manufacturer</td><td>Pushing the acceleration button or switch shall increase speed.Pushing the deceleration button or switch shall decrease speed</td></tr><tr><td>Finger-operated dial</td><td>At the option of the manufacturer</td><td>Turning the dial clock-wise shall increase speed.Turning the dial counter clock-wise shall decrease speed.</td></tr><tr><td rowspan="2">Foot-operated single pedal control</td><td>Available to operator&#x27;s right foot</td><td>Downward or forward motion shall increase speed.Upward or rearward motion shall decrease speed.</td></tr><tr><td>Available to operator&#x27;s right foot</td><td>For crawler dozers downward or forward motion shall decrease speed.</td></tr></table>

## is coded as:

```html

<tr>

    <td align="left" rowspan="2" scope="row" style="border-left: solid 2px; border-top: solid

1px; border-right: solid 1px; border-bottom: solid 2px" valign="top">Foot-

operated<break/>single pedal control</td>

    <td align="left" style="border-left: solid 1px; border-top: solid 1px; border-right: solid

1px; border-bottom: solid 1px" valign="top">Available to operator’s right foot</td>

    <td align="left" style="border-left: solid 1px; border-top: solid 1px; border-right: solid

2px; border-bottom: solid 1px" valign="top">Downward or forward motion shall increase

speed.<p>Upward or rearward motion shall decrease speed.</p></td>

</tr>

```

## 6.5 Line breaks and lists within a table

Line breaks can occur if technically significant or if required for output appearance.

Whenever a soft break is required in a table cell, it is coded with <break/>.

Whenever a new paragraph is required in a table cell, it is coded with <p> .

<list> is allowed in table cells.

## 6.6 Landscape tables

The orientation of a table (i.e. whether it should be laid out in landscape or portrait mode in paperbased outputs) is contained inside <table-wrap>, with @orientation. The default value "portrait" is usually not indicated.

Tables with landscape orientation are coded with @orientation="landscape".

For example:

![](page=9,bbox=[240, 120, 602, 281])

```html

<table-wrap id="tab_a" orientation="landscape" >...</table-wrap>

```

ISO 1101:2004(E)

![](page=9,bbox=[565, 674, 1546, 2040])

![](page=10,bbox=[237, 118, 601, 282])

## 7 Formulae and equations

## 7.1 Elements and attributes

## Editorial note

Numbered formulae usually are separated from the text and labelled with a number in parentheses, e.g. (1). This number is usually sequential and numbered independently throughout the document, irrespective the numbering of any containing clauses. Numbered formulae contained in annexes are prefixed by the annex letter.

A full formula/equation that is separate from the surrounding text is coded using <disp-formula>. If a full formula/equation is embedded in the flow of the text that surrounds it, it should be captured in <inline-formula>.

The formula number is captured as a <label> within the <disp-formula>, e.g.

```html

<disp-formula id="formula_1">

    <label>(1)</label>

    <mml:math id="mml_m1">

        ...

    </mml:math>

</disp-formula>

```

## 7.2 Notes to formulae

<disp-formula> elements can have notes coded as <non-normative-note> after the <mml:math> element.

## 7.3 Formula keys

Formula keys are coded as <legend> inside <disp-formula>.

There can be only one <legend> for each <disp-formula>.

Inside <legend>, <title> contains the word "where", and is followed by a <def-list>. Each <def-item> inside the <def-list> contains a pair of <term> and <def>.

For example:

$ W_{3}=\frac{m}{At}=\frac{m}{\pi r^{2}t} $ (1) where $ W_{3} $ is the water vapour permeability, in $ \mathrm{mg}/(\mathrm{cm}^{2}\cdot\mathrm{h}); $ m is $ m_{2}-m_{1} $ , in mg; $ m_{1} $ is the initial mass of the jar with test piece and silica gel, in mg; $ m_{2} $ is the final mass of the jar with test piece and silica gel, in mg.

will be coded as:

![](page=11,bbox=[238, 119, 603, 283])

```html

<disp-formula id="formula_1___1">

    <mml:math display="block" id="mml_m8">

        ...

    </mml:math>

    <label>(1)</label>

    <legend>

        <title>where</title>

        <def-list list-content="formula">

            <def-item>

                <term><italic>W</italic><sub>3</sub></term>

                <def><p>is the water vapour permeability, in mg/(cm<sup>2</sup>·h);</p></def>

            </def-item>

            <def-item>

                <term><italic>m</italic></term>

                <def><p>is <italic>m</italic><sub>2</sub> - <italic>m</italic><sub>1</sub>, in

mg;</p></def>

            </def-item>

            <def-item>

                <term><italic>m</italic><sub>1</sub></term>

                <def><p>is the initial mass of the jar with test piece and silica gel, in

mg;</p></def>

            </def-item>

            <def-item>

                <term><italic>m</italic><sub>2</sub></term>

                <def><p>is the final mass of the jar with test piece and silica gel, in

mg.</p></def>

            </def-item>

        </def-list>

    </legend>

</disp-formula>

```

## 7.4 MathML

The mathematical expression within the <disp-formula> or <inline-formula> is coded using <mml:math>.

If one <disp-formula> contains more than one mathematical expression laid out on separate lines, these are contained in one <mml:math>.

## 8 Figures

## 8.1 Elements and attributes

## Editorial note

A figure is made up of at least an image and a designation "Figure # - Title of Figure", e.g: Figure 1 - Rigid steel plate.

The figure is coded in <fig>. This element can also contain information about the orientation of the figure (i.e. whether it should appear on a landscape or portrait page in paper-based output formats) and the size of its graphic as defined in the OSD editor. The @orientation can have the values "landscape" or "portrait" (although portrait is the default value and mostly not indicated).

Within <fig>,

- the figure number is coded in <label>

![](page=12,bbox=[237, 119, 602, 282])

- the figure designation is coded in <title> within <caption>, e.g.:

```html

<fig id="fig-1">

<label>Figure 1</label>

<caption>

<title>Overview of the dictionary schema</title></caption>

<graphic xlink:href="asset/fig-1"/></fig>

```

- information about the image file is coded in <graphic> (see 5.10)

- figure notes are coded in <non-normative-note> after <graphic>

- paragraphs between the graphic and the figure designation are coded in <p>

- a figure key is coded as described in 8.3

## 8.2 Sub-figures and multiple graphics within a figure

Figures that contain more than one graphic can be organised

a) as one figure ( <fig> ) with individual graphics ( <graphic> ), or

b) a figure group ( <fig-group> ) with different sub-figures (multiple <fig> as child elements of <fig-group> )

For case a), the different graphics will be rendered in the order of appearance inside <fig>.

For case b), there will only be one <legend> for the entire group, at the <fig-group> level. However, notes and examples have to remain at the sub-figure (<fig>) level, as they are not permitted at <fig-group> level in NISO STS. Usually, any notes and examples concerning the entire <fig-group> will be appear inside the last <fig> element.

## 8.3 Figure keys

Figure keys are coded as <legend> inside <fig>.

There can be only one <legend> for each <fig> and each <fig-group>.

Inside <legend>, <title> contains the word "Key", and is followed by a <def-list>. Each <def-item> inside the <def-list> contains a pair of <term> and <def>.

![](page=13,bbox=[238, 118, 602, 281])

For example:

![](page=13,bbox=[570, 485, 1524, 1228])

Key

1 equivalent circle grain diameter, $ d_{ci} $

2 maximum grain (Feret) size, $ d_{ci,\mathrm{max}} $

3 maximum orthogonal grain size perpendicular to 2, $ d_{ci,\mathrm{perp}} $

<div align="center">

Figure 1 Equivalent circle diameter and definition of aspect ratio

</div>

will be coded as:

```html

<fig id="id-2a2aa2f4-554c-4359-c583-24cfce9ff7ab">

    <label>Figure 1</label>

    <caption>

        <title>Equivalent circle diameter and definition of aspect ratio</title>

    </caption>

    <legend id="id-c9243a79-30ec-43f3-fc83-b051d6ea839a">

        <title>Key</title>

        <def-list list-content="figure" id="id-484f-b7a1-c79f78fecb5b">

            <def-item id="id-a9461401-0ccd-41d5-89cd-bd228ade8bd0">

                <term>1</term>

                <def>

                    <p id="id-628ff15b-78e2-4b9e-acd6-33d47ee4f357">equivalent

                        circle grain diameter, <italic>d</italic><sub>ci</sub></p>

                </def>

            </def-item>

            <def-item id="id-8e97d782-c84b-467b-8192-2fdb287d9974">

                <term>2</term>

                <def>

                    <p id="id-4c80da00-7c43-4d73-836c-0037418704bb">maximum grain

                        (Feret) size, <italic>d</italic><sub>ci, max</sub></p>

                </def>

            </def-item>

            <def-item id="id-46d43b6c-fdba-4188-bc12-3ca9e5355dac">

                <term>3</term>

                <def>

                    <p id="id-d93c92d3-89d8-44df-ad4d-ba7d2918a582">maximum

                        orthogonal grain size perpendicular to 2,

                        <italic>d</italic><sub>ci, perp</sub></p>

                </def>

            </def-item>

        </def-list>

```

![](page=14,bbox=[235, 118, 603, 284])

## 8.4 Unit statements in figures

When a figure contains a unit statement such as "Dimensions in millimetres", this is coded as <p> with @content-type="dimension" inside the figure caption.

For example the unit statement in this figure:

![](page=14,bbox=[853, 913, 1208, 1388])

Dimensions in millimetres

Key

1 metal angle frame

<table border="1"><tr><td>Viscometer speed</td><td>Shear rate</td></tr><tr><td>29,40</td><td>25</td></tr><tr><td>58,80</td><td>50</td></tr><tr><td>88,20</td><td>75</td></tr><tr><td>117,6</td><td>100</td></tr></table>

<div align="center">

Figure 9 - Support rack for plastic sheets

</div>

is coded as:

```html

<fig id="id-d6dbd95d-2f55-412a-a2b1-f8a0ffeaceb4">

  <label>Figure 9</label>

  <caption>

    <title>Support rack for plastic sheets</title>

    <p content-type="dimension" id="id-975b481c-2dc1">Dimensions in millimetres</p>

  </caption>

```

## 9 Terms and definitions

## 9.1 Subclauses inside a "Terms and Definitions" clause

The terms and definitions clause can be subdivided: either to organize and group similar concepts, or to separate a terms and definitions subclause from another subclause, such as abbreviated terms.

In this example, "3.1 Document type" is a subclause and will be coded as <sec>:

![](page=15,bbox=[237, 119, 602, 283])

## 3 Terms and definitions

For the purposes of this document, the following terms and definitions apply.

ISO and IEC maintain terminology databases for use in standardization at the following addresses:

- ISO Online browsing platform: available at https://www.iso.org/obp

- IEC Electropedia: available at https://www.electropedia.org

3.1 Document type

3.1.1

document

ISO or IEC standardization draft or publication

EXAMPLE International Standards (3.1.4), Technical Specifications (3.1.5), Publicly Available Specifications (3.1.6), Technical Reports (3.1.8) and Guides (3.1.7).

3.1.2

standard

document (3.1.1), established by consensus and approved by a recognized body, that provides, for common and repeated use, rules, guidelines or characteristics for activities or their results, aimed at the achievement of the optimum degree of order in a given context

Note 1 to entry: Standards should be based on the consolidated results of science, technology and experience, and aimed at the promotion of optimum community benefits.

[SOURCE: ISO/IEC Guide 2:2004, 3.2]

Subclauses inside the "Terms and Definitions" clause must not be confused with terminological entries containing sub-entries.

## 9.2 Terminological entries in TBX

## 9.2.1 Terms and definitions

A terminological entry (<tbx:termEntry>) contains these core components (inside <tbx:langSet>):

- Terms and their description (each term coded inside its own <tbx:tig>) - see 9.2.3

- Definition (<tbx:definition>) - see 9.2.2

For further information about these and other elements of TBX, see https://www.iso.org/schema/nisosts/v0.2/doc/tbx/index.html.

## 9.2.2 Definitions

A definition is coded in <tbx:definition>, inside <tbx:langSet>.

A <break/> can be used to insert a line break in a definition if necessary.

## 9.2.3 Terms and additional information on them

Each term and its descriptive elements are contained in one individual <tbx:tig> (term information group). Terms are coded inside <tbx:term>, which is mandatory.

The elements used to describe terms are currently:

- <tbx:partOfSpeech>

![](page=16,bbox=[239, 119, 601, 281])

- <tbx:normativeAuthorization> (mandatory)

- <tbx:termType> (mandatory)

- <tbx:grammaticalNumber> (optional, only on nouns)

<tbx:geographicalUsage> and <tbx:grammaticalGender> will probably be used in the future; however, they are not on the roadmap today.

## "Part of speech" of a term

<tbx:partOfSpeech> has the following possible values:

- none - in which case the entire element is absent

- noun

- verb

- adj

- adv

For example:

3. 1

electro-pneumatic continuous pressure control valve control valve which continuously modulates the pneumatic power of a system in response to a continuous electrical input signal and which links the electrical input quantity to a pressure value

is coded as:

```xml

<term-sec id="sec_3.1">

    <label>3.1</label>

    <tbx:termEntry id="term_3.1">

        <tbx:langSet xml_lang="en">

            <tbx:definition>control valve which continuously modulates the pneumatic power

of a system in response of a continuous electrical input signal and which links the

electrical input quantity to a pressure value</tbx:definition>

            <tbx:tig>

                <tbx:term>electro-pneumatic continuous pressure control valve</tbx:term>

                <tbx:partOfSpeech value="noun"/>

            </tbx:tig>

        </tbx:langSet>

    </tbx:termEntry>

</term-sec>

```

## Form of the term (<tbx:termType>)

<tbx:termType> is optional and can have these values in the ISO/IEC context:

- fullForm (default value, can be omitted)

- abbreviation (for abbreviated forms)

- symbol

- formula (for chemical formulae)

![](page=17,bbox=[239, 118, 602, 282])

For example:

3. 13 data monitoring committee DMC independent committee that may be established by the sponsor to assess, at intervals, the progress of the clinical investigation, the safety data or the critical performance endpoints and to recommend the sponsor whether to continue, suspend, modify, or stop the clinical investigation

## is coded as:

```xml

<term-sec id="sec_3.13">

    <label>3.13</label>

    <tbx:termEntry id="term_3.13">

        <tbx:langSet xml:lang="en">

            <tbx:definition>independent committee that may be...

investigation</tbx:definition>

            <tbx:tig>

                <tbx:term>data monitoring committee</tbx:term>

                <tbx:partOfSpeech value="noun"/>

            </tbx:tig>

            <tbx:tig>

                <tbx:term>DMC</tbx:term>

                <tbx:partOfSpeech value="noun"/>

                <tbx:termType value="abbreviation"/>

            </tbx:tig>

            </tbx:langSet>

        </tbx:termEntry>

    </term-sec>

```

## Term status (<tbx:normativeAuthorization>)

<tbx:normativeAuthorization> is an optional element indicating the status of a term. It is generally used at ISO/IEC and can have these values:

- preferredTerm (recommended)

- admittedTerm (allowed)

- deprecatedTerm (for deprecated or obsolete terms, superseded terms, archaic terms, scientifictechnical slang, terms indicated as "deprecated in this sense" [IEV] and other terms which are detrimental to domain communication)

For example:

```html

<term-sec id="con-3.9">

<label>3.9</label>

<tbx:termEntry>

<tbx:langSet xml:lang="en">

<tbx:definition>radiant power incident on an element of a surface divided by the area of that

element</tbx:definition>

<tbx:source><std id="id-453b14bb-fc43-4d5e-8ff7-bfcdfb4c5fce"><std-id std-id-link-type="urn" std-id-

type="dated">urn:iec:std:iec:60050-731:1991-12::::#con-731-1-25</std-id>

<std-ref> IEC 60050-731:1991, 731-1-25</std-ref></std></tbx:source>

<tbx:tig>

<tbx:term id="ter-irradiance">irradiance</tbx:term>

<tbx:normativeAuthorization value="preferredTerm"/>

<tbx:termType value="fullForm"/></tbx:tig>

<tbx:tig>

<tbx:term id="ter-intensity">intensity</tbx:term>

<tbx:normativeAuthorization value="deprecatedTerm"/>

<tbx:termType value="fullForm"/></tbx:tig></tbx:langSet></tbx:termEntry></term-sec>

```

![](page=18,bbox=[238, 119, 602, 282])

and:

```html

<term-sec id="con-3.1">

<label>3.1</label>

<txb:termEntry>

<txb:langSet xml:lang="en">

<txb:definition>fluctuating pressure superimposed on the static (barometric) pressure by the presence of sound</txb:definition>

<txb:note id="nte-3.1-1">It is expressed in pascal, Pa.</txb:note>

<txb:tig>

<txb:term id="ter-sound_pressure">sound pressure</txb:term>

<txb:normativeAuthorization value="preferredTerm"/>

<txb:termType value="fullForm"/></txb:tig>

<txb:tig>

<txb:term id="ter-p"><italic>p</italic></txb:term>

<txb:normativeAuthorization value="admittedTerm"/>

<txb:termType value="symbol"/></txb:tig></txb:langSet></txb:termEntry></term-sec>

```

## 9.2.4 Examples in terminology

Examples in terminology are coded in <tbx:example>. The word "Example" and the number / label are removed from the content. Both need to be added in the rendering process (rule: one example is not numbered, more than one example requires all of them to be numbered, restarting with every term entry).

For example:

3.1 boundaries physical or site limits and/or organizational limits as defined by the organization

EXAMPLE A process; a group of processes; a site; an entire organization; multiple sites under the control of an organization.

is coded as:

```xml

<term-sec id="sec_3.1">

    <label>3.1</label>

    <tbx:termEntry id="term_3.1">

        <tbx:langSet xml:lang="en">

            <tbx:definition>physical or site limits... organization</tbx:definition>

            <tbx:example>A process; a group... organization </tbx:example>

        ..

    </term-sec>

```

## 9.2.5 Notes in terminology

Terminological notes ("Note X to entry") are coded as <tbx:note>. The words "Note X to entry" including the number, are not included in the content and need to be added in the rendering process.

For example:

![](page=19,bbox=[239, 119, 602, 281])

TERM ENTRY 3.27

TERM NOUN - PREFERRED - FULL FORM

derived class

DEFINITION

class created by inheritance from another class

Note 1 to entry:

Derived class is also named extended class or child class.

is coded as:

```xml

<term-sec id="con-3.27">

  <label>3.27</label>

  <tbx:termEntry id="te-3.27">

    <tbx:langSet xml:lang="en">

      <tbx:definition>class created by inheritance from another class</tbx:definition>

      <tbx:note id="nte-3.27-1">Derived class is also named extended class or child

        class.</tbx:note>

      <tbx:tig id="id-70a027b2-ee5a-4a42-9b6a-fa91d333cf9b">

        <tbx:term id="ter-derived_class">derived class</tbx:term>

        <tbx:partOfSpeech value="noun"/>

        <tbx:normativeAuthorization value="preferredTerm"/>

        <tbx:termType value="fullForm"/>

      </tbx:tig>

    </tbx:langSet>

  </tbx:termEntry>

</term-sec>

```

## 9.2.6 Cross-references to terms

References to terms in the document can be made

a) from one terminological entry to another

b) from outside the terms and definitions section

The two use different tagging.

## Cross-references from one terminological entry to another

Cross-references between terminological entries within the Terms and definitions clause are tagged as <tbx:entailedTerm> with the ID of the referenced entry in @target. This element is only used in child elements of <tbx:termEntry>.

For example:

3. 3 correction action to eliminate a detected nonconformity (3.21) NOTE Adapted from ISO 9000:2005, definition 3.6.6.

![](page=20,bbox=[238, 119, 602, 282])

## is coded as:

```xml

<term-sec id="sec_3.3">

    <label>3.3</label>

    <tbx:termEntry id="term_3.3">

        <tbx:langSet xml:lang="en">

            <tbx:definition>action to eliminate a detected <tbx:entailedTerm

target="term_3.21">nonconformity (3.21)</tbx:entailedTerm></tbx:definition>

            <tbx:note>Adapted from <std><std-ref>ISO 9000:2005</std-ref>, definition

3.6.6</std>.</tbx:note>

            <tbx:tig>

                <tbx:term>correction</tbx:term>

                <tbx:partOfSpeech value="noun"/>

            </tbx:tig>

            </tbx:langSet>

        </tbx:termEntry>

    </term-sec>

```

## Cross-references from outside the terms and definitions section

These are coded in <xref> with @ref-type="custom" and @custom-type="term-entry".

For example:

Any data point reporting a concentration below 3 % of the initial concentration (3.1.6) shall be eliminated along with all subsequent data points of the run.

is coded as:

<p id="p-105">Any data point reporting a concentration below 3 % of the <xref ref-type="custom" custom-type="term-entry" rid="con-3.1.6"><bold>initial concentration (3.1.6)</bold></xref> shall be eliminated along with all subsequent data points of the run.</p>

## 9.2.7 Cross-references to the other sections of the document from the terminology section

While previously <tbx:see> was used for references from the terms and definitions to other clauses, tables, figures etc. in the document, now <xref> is used.

## 9.2.8 Coding the source related to the terminological entry

If there is a stated source for an entry, it is included in <tbx:source> within <tbx:langSet>. Square brackets and the word "SOURCE" are not included and have to be added during rendering.

For example:

3. 13 lateral position sensor component of the drive unit that provides the lateral position of the measured point Note 1 to entry: The lateral position is customarily measured or inferred by using, for example, a linear encoder, a laser interferometer or a rotary encoder coupled with a micrometer screw. [SOURCE: ISO 25178-600:2019, 3.2.4]

is coded as:

![](page=21,bbox=[238, 119, 602, 283])

```xml

<term-sec id="sec_3.13"><label>3.13</label>

    <txb:termEntry id="term_3.13">

        <txb:langSet xml:lang="en">

            <txb:definition>component of the drive unit that provides the lateral position of

the measured point</txb:definition>

            <txb:note>The lateral position is customarily measured or inferred by using, for

example, a linear encoder, a laser interferometer or a rotary encoder coupled with a

micrometer screw.</txb:note>

            <txb:source>ISO 25178-600:2019, 3.2.4</txb:source>

            <txb:tig id="term_3.13-1">

                <txb:term>lateral position sensor</txb:term>

                <txb:partOfSpeech value="noun"/>

            </txb:tig></txb:langSet>

        </txb:termEntry>

    </term-sec>

```

## 9.2.9 Subject fields of a terminological entry

Subject fields related to a terminological entry are tagged with <tbx:subjectField>, within <tbx:langSet>. Additional punctuation, such as the brackets in the example, have to be added during rendering.

3. 6 dispute (dispute resolution) disagreement, arising from a complaint (3.3), submitted to a provider (3.9)

is coded as

```xml

<term-sec id="sec_3.6">

    <label>3.6</label>

    <tbx:termEntry id="term_3.6">

        <tbx:langSet xml:lang="en">

            <tbx:subjectField>dispute resolution</tbx:subjectField>

            <tbx:definition>disagreement, arising from a <tbx:entailedTerm

target="term_3.3">complaint (3.3)</tbx:entailedTerm>, submitted to a <tbx:entailedTerm

target="term_3.9">provider (3.9)</tbx:entailedTerm></tbx:definition>

    ...

</term-sec>

```

## 10 References

## 10.1 Document-internal references

## 10.1.1 Cross-references

Document-internal cross-references are tagged as <xref>.

## Attributes of <xref>

- @ref-type - type of target

- @rid-ID of the target

Possible values of @ref-type:

- <xref ref-type="abbreviation">

- <xref ref-type="app">

![](page=22,bbox=[237, 118, 602, 282])

- <xref ref-type="bibr">

- <xref ref-type="custom">

o with possible values for custom-type=

- term-entry (for the coding of cross-references to terms, see 9.2.6)

- note

- example

- <xref ref-type="disp-formula">

- <xref ref-type="fig">

- <xref ref-type="fn">

- <xref ref-type="sec">

- <xref ref-type="table">

- <xref ref-type="table-fn">

## 10.1.2 Cross-references to sections, Tables, Figures and Formulae

References to sections, tables, figures, and formulae in the document are made using the ID in the respective <sec>, <table-wrap>, <fig >, or <disp-formula> to populate @rid.

For example:

See Table 2 for an illustration.

is coded as:

<p>See <xref ref-type="table" rid="tab_2">Table 2</xref> for an illustration.</p>

## 10.1.3 Cross-references to notes and examples

Cross-references to notes and examples are made inside <xref> with @ref-type="custom" and @custom-type="note" or "example".

The ID of the target element is contained in @rid.

## 10.1.4 Cross-references to abbreviations

Abbreviations contained in a list of abbreviations can be cross-referenced from elsewhere in the document.

To this purpose, a <def-list> is created (with @list-content="abbreviation"), listing all the abbreviations in <term> and their definitions in <def> inside <def-item>, which carries the ID of the <term>-<def> pair.

Any occurrences in the text can then be linked via <xref> to the respective <def-item>, providing the possibility, in the rendered content, to create for example a tooltip window for the user that will display the definition of any abbreviation on mouse-over.

For example:

![](page=23,bbox=[238, 119, 601, 281])

<div align="center">

3. 2 Abbreviated terms

</div>

<table border="1"><tr><td>APL</td><td>average picture level</td></tr><tr><td>CAT</td><td>chromatic adaptation transform</td></tr><tr><td>CCT</td><td>correlated colour temperature</td></tr><tr><td>CGV</td><td>colour gamut volume</td></tr><tr><td>CIE</td><td>International Commission on Illumination</td></tr><tr><td>CIELAB</td><td>CIE 1976(L*a*b*) colour space</td></tr><tr><td>CSW</td><td>colour signal white</td></tr></table>

is coded as:

```html

<sec id="sec-3.2">

<label>3.2</label>

<title>Abbreviated terms</title>

<def-list list-content="abbreviation">

<def-item>

<term id="abb-apl">APL</term>

<def><p id="p-30">average picture level</p></def></def-item>

```

and can then be referred to later in the document like this:

c) Standard medium APL loading RGBCMY test pattern

coded as:

```html

<list-item id="lis-6.9.3.2-L1-3">

<label>c)</label>

<p id="p-242">Standard medium <xref ref-type="abbreviation" rid="abb-apl">APL</xref> loading <xref

ref-type="abbreviation" rid="abb-rgbcmy">RGBCMY</xref> test pattern (see <xref ref-type="fig"

rid="fig-6">Figure&#160;6</xref>).</p></list-item></list></sec>

```

## 10.1.5 Cross-references to list items

Only items in ordered lists can be referenced from elsewhere in the text. Cross-references to list items are made inside <xref> with @ref-type = "list". The ID of the target element is contained in @rid.

For example:

Use the method indicated in Annex A, list item a.1).

is coded as:

<p>Use the method indicated in <xref ref-type="list" rid="id-6304d1e4-f20d-418b-cacb-4e2149bafb66">Annex A, list item a.1)</xref></p>

## 10.1.6 Cross-references to items in the bibliography

References to items in the bibliography are coded with <xref>, with @ref-type="bibr" and @rid containing the ID of the bibliographical entry to which the cross-reference is made.

The label contains the number of the entry in the bibliography in square brackets. If the entry is a standard, the label also contains the standard reference before the entry number.

As these cross-references go to items already properly marked up in the bibliography, there is no specific markup for the document included in the cross-reference itself.

![](page=24,bbox=[239, 119, 602, 282])

For example:

More details can be found in [1]

is coded as:

<p>More details can be found in <xref ref-type="bibr" rid="id-cdff4c49-08b8-458f-96d5-b875db38a8d3">[1]</xref>.</p>

while this:

More details can be found in ISO 23537-1:2016/Amd 1:2018 [2]

is coded as:

<p>More details can be found in <xref ref-type="bibr" rid="id-c840b2d5-9216-478f-a838- 300893407f27">ISO 23537-1:2016/Amd 1:2018 [2]</xref>.</p>

## 10.1.7 References to items in the normative references

Where items listed in the normative references are mentioned in the text, they will be marked up as in the normative references section, i.e. with <std> for standards and <mixed-citation> for other types of documents.

## 10.1.8 Footnotes

This section deals with body text footnotes, i.e. footnotes inside the regular text. For table footnotes, see Table notes and footnotes.

## Editorial note

Footnotes are normally located at the bottom of a page in a print document.

References to footnotes are generally represented by superscript characters, usually alpha characters in tables and numerals in the text.

## Footnote references

References to footnotes are tagged as <xref> with @ref-type="fn". Their styling is not included in the XML; superscript needs to be effected during rendering.

## Footnote text

The content of the footnote is tagged as <fn> and placed at the point of use in the text.

## 10.1.9 URL

A URL is coded using <ext-link> with @ext-link-type="uri". @xlink:href contains the actual link. For example:

![](page=25,bbox=[239, 120, 601, 282])

IEC Electropedia: available at https://www.electropedia.org/

ISO Online browsing platform: available at https://www.iso.org/obp

is coded as:

<p> IEC Electropedia: available at <ext-link ext-link-type="uri"

    xlink:href="https://www.electropedia.org/"

    >https://www.electropedia.org/</ext-link></p>

<p> ISO Online browsing platform: available at <ext-link ext-link-type="uri"

    xlink:href="https://www.iso.org/obp">https://www.iso.org/obp

    </ext-link></p>

## 10.2 References to other documents

References to other documents are listed in the Normative references section and the Bibliography. The coding of these lists is described in Normative References and Bibliography.

Where they are cited in the text, they appear in <std> (standards) or <mixed-citation> (other documents).

For example:

```html

<p>

<std id="id-857148c9-22b3-4a21-e052-c70b1e7c36e3">

<std-id std-id-link-type="urn" std-id-type="undated">

"iso:pub:std:CD:81899"

</std-id>

<std-ref>

"ISO/IEC CD TS 6010"

</std-ref>

</std>

```

## 10.2.1 Supplementary material

Today, IEC is using <supplementary-material> and <inline-supplementary-material> as described in Annex E. In future, the use of these elements to reference external documents will be elaborated. Once finalised, it will be documented here.

![](page=26,bbox=[237, 118, 603, 283])

<div align="center">

# Annex A Multilingual contents, translations and adoptions

</div>

## A.1 Definitions

## Original standard

The document that was developed by ISO or IEC, in the language it was originally developed in ("reference version" in NISOSTS documentation)

## Reference version

The original standard in the NISOSTS documentation

## Derived version

Document that is based on an original standard but different, e.g. translation, adoption

## Multilingual document

Document with more than one language inside the original standard

NOTE: Output variants such as PDFs containing different language versions of one original standard do NOT count as multilingual documents.

## Adoption

Local version of an original standard

It can be

- of identical content and in the original language

- of identical content and translated

- modified (i.e. with additional, modified or deleted content, translated or not)

## Translation

Document in a language different from the original

## Localisation

Adaptation of content and / or metadata to local specificities

## A.2 Rules of good governance and recommendations for different document categories

In this section, we indicate the rules applicable to translations and adoptions of IEC and ISO documents. These are mandatory to follow. All other rules described are suggestions and indicate best practices.

Content in the context of multilingualism, translations and adoptions can be of different types:

- existing in the original (unilingual) standard and translated exactly

- existing in the original standard and modified (added / removed) during the adoption

![](page=27,bbox=[238, 119, 602, 282])

IEC and ISO metadata have to be preserved in any case. A translation of our content has to correspond to the original text.

Any modifications of the original content need to be made clear - the status of the document (translated, adopted, modified or not) shall be mentioned. Transparency about the nature of the changes to the original standard (in terms of content or markup) is recommended.

Changes should be indicated

- in the metadata

- in the content in the place where the change has occurred.

- in the tagging of the content

## A.3 Structuring and tagging a document

## A.3.1 Structure

Organisations adopting an International Standard will use the <adoption> element (documented on the NISO STS website: https://www.niso-sts.org/TagLibrary/niso-sts-TL-1-2-

html/element/adoption.html) to add their own material and, inside <adoption>, the <standard> element to contain the original or translated standard.

Inside <adoption>, the structure of the original standard and its tagging should be preserved. If content is added or modified, the existing tags (elements and attributes) should be maintained; splitting existing tags should be avoided wherever possible.

## Metadata

During adoptions, ensure the metadata of originating organisation are preserved, within <standard>. Useful tags in this context are <std-doc-meta> (containing metadata valid for the entire document) and <std-meta> (containing metadata for only the derived version). Metadata of the originating organisation must not be modified.

When metadata of the adopting organisation are added, these should be contained in <adoptionfront>, inside <std-meta>.

<processing-meta> contains information about the table model used, the terminology model and the version of MathML. While NISOSTS allows these to be different at the level of the original standard than in <adoption>, it is recommended to keep them identical to facilitate the processing of the XML.

Avoid <iso-meta>, <reg-meta> and <nat-meta> as they are outdated.

For multilingual documents, @xml:lang should be used on the most outer block level element. For example, if a document has alternating sections in English and French, then it is sufficient to provide the @xml:lang="en" or @xml:lang="fr" in the top level <sec> element only.

## Elements

Content element tags should be maintained whenever the content remains identical.

![](page=28,bbox=[239, 119, 602, 281])

## Attributes

Attributes should be maintained, unless they are directly related to language- or region-specific aspects, as is the case for terminology as coded in TBX and in IEV documents.

## IDs

IDs are generally arbitrary, without reproducing semantic meaning, to ensure they can stay identical throughout the document lifecycle even if their purpose or place in the document changes.

NOTE: Although many legacy standards still contain semantic IDs,their use is no longer supported. While some may still be present in older documents,all new IDs are generated as arbitrary IDs.

For all adoptions or translations of existing content, it is recommended to maintain the original IDs as far as possible (either identical or with a prefix / suffix; in the case of pre-/suffixes, always use the same pattern).

Additional content requires new unique IDs.

## References

References to International Standards (or to other documents for which translations or local versions exist) can be adapted during translation / adoption if the newly referenced document is identical to the original reference.

## A.3.2 Tagging that may need to be modified

## Terminology

Inside the container element <tbx:termSec>, ISO and IEC usually provide terminology in NISOSTS TBX (except for some IEC legacy documents which use <termdisplay>).

The following elements may require particular attention during translation:

<table border="1"><tr><td><b>label</b></td><td>NOT a TBX element; has been added in NISOSTS to allow numbering terminological entries inside a standard. The original numbering should be preserved in translation; terminological entries should not be ordered differently in the target language.</td></tr><tr><td><b>tbx:termEntry</b></td><td>contains the full terminological entry.</td></tr><tr><td><b>tbx:langSet</b></td><td>@xml:lang needs to be adapted to the language of translation</td></tr><tr><td><b>tbx:grammaticalNumber</b></td><td>may need to be adapted to the target language</td></tr><tr><td><b>tbx:geographicalUsage</b></td><td>needs to be added in cases where a distinction in the target language is required or useful (it is generally not provided in</td></tr></table>

![](page=29,bbox=[239, 120, 602, 281])

<table border="1"><tr><td></td><td>IEC and ISO standards, except for some legacy documents or terminology standards of the IEC 60050 series)</td></tr><tr><td>tbx:grammaticalGender</td><td>needs to be added if it is required in the translation- as IEC and ISO publications are usually developed in English, there has been no use for this element so far</td></tr><tr><td>tbx:example</td><td>may need to be adapted to be helpful for users of the translation</td></tr><tr><td>tbx:partOfSpeech</td><td>will usually be identical but may need to be adapted</td></tr><tr><td>tbx:pronunciation</td><td>needs to be added if it is required; it is generally not provided in IEC and ISO standards</td></tr><tr><td>tbx:source</td><td>may need to be adapted if the source of a terminological entry in the target language is different from the source of the original. It can be removed if there is no source in the target language.</td></tr></table>

![](page=0,bbox=[237, 118, 603, 282])

<div align="center">

# Annex B

</div>

<div align="center">

# Legacy coding and coding from the traditional publication chains (including possible differences between IEC and ISO)

</div>

## B.1 Reasons for coding differences

Historically, the two organisations each applied their own tagging to their XML documents. With the arrival of NISO STS v.1.0, discussions were taken up to harmonise the XML, the first result being edition 1.0 of the present Coding guidelines.

The use of OSD has now made it necessary to fully align on the XML content. Metadata still contain differences.

Differences in tagging, which were originally described in the main body of this document, have now been moved to the annex as they only apply to legacy content, respectively content coming out of the traditional publication chain.

Where contents or usages are different between ISO and IEC,the ISO variant is provided in a red box,the IEC variant in a blue one.

<table border="1"><tr><td>ISO variant
...</td></tr><tr><td>IEC variant
...</td></tr></table>

## B.2 Traditional and legacy coding

## B.2.1 Front matter

The following front and back matter content are not captured in the XML:

- cover pages

- table of contents

- page headers and footers containing the name of the document, page numbers etc.

- index if it refers to page numbers (if coded, indexes refer to marked-up elements, and only in XML from the traditional publication chain - OSD does not generate indexes)

The copyright notices listed in the footer in the PDF document are captured in the metadata section using <permissions>.

In addition to the elements listed in 4.2, the front matter of a standard may contain prose material, such as notes and sections, particularly as used for placeholder elements not articulated in NISO

![](page=1,bbox=[238, 118, 601, 281])

STS (for example, patents or particular copyright statements) or for older content with different structures.

## B.2.2 Use of <sec> for custom subdivisions

Legacy documents sometimes have non-standard subdivisions, such as chapters or other groupings of content. For these, <sec> is used.

## B.2.3 @content-type for indexes

@content-type in <back> can also be index

## B.2.4 Lists of references (normative / bibliographic) with designators

A reference in the normative reference section that is not a standard is coded as it appears (including punctuation and label) using <mixed-citation>.

## Case 1:

- W3C XML 1.0:2000, Extensible Markup Language (XML) 1.0 (Second Edition), W3C Recommendation, Copyright $ \circ $ [6 October 2000] World Wide Web Consortium, (Massachusetts Institute of Technology, Institut National de Recherche en Informatique et en Automatique, Keio University), http://www.w3.org/TR/2000/REC-xml-20001006.

is coded as:

```xml

<ref>

    <label>—</label>

    <mixed-citation>W3C XML&#x00A0;1.0:2000, Extensible Markup Language (XML)&#x00A0;1.0

(Second Edition), W3C Recommendation. Copyright  [6 October&#x00A0;2000] World Wide Web

Consortium, (Massachusetts Institute of Technology, Institut National de Recherche en

Informatique et en Automatique, Keio University), <uri

xmlns:xlink="http://www.w3.org/1999/xlink">http://www.w3.org/TR/2000/REC-xml-

20001006</uri>.</mixed-citation>

</ref>

```

## Case 2:

- W3C XML Schema:2001, XML Schema Part 2: Datatypes, W3C Recommendation, Copyright $ \textcircled{c} $ [2 May 2001] World Wide Web Consortium, (Massachusetts Institute of Technology, Institut National de Recherche en Informatique et en Automatique, Keio University), http://www.w3.org/TR/2001/REC-xmlschema-2-20010502.

NOTE - When the reference "W3C XML Schema" is used in this Recommendation | International Standard, it refers to W3C XML Schema Part 1 and W3C XML Schema Part 2.

- IETF RFC 2396 (1998), Uniform Resource Identifiers (URI): Generic Syntax.

- IETF RFC 1766 (1995), Tags for the Identification of Languages.

is coded as:

![](page=2,bbox=[238, 119, 602, 283])

```xml

<ref>

    <label>—</label>

    <mixed-citation>W3C XML Schema:2001, XML Schema Part&#x00A0;2: Datatypes, W3C

Recommendation. Copyright [`amp]copy; [2 May&#x00A0;2001] World Wide Web Consortium.

(Massachusetts Institute of Technology, Institut National de Recherche en Informatique et en

Automatique, Keio University), <uri

xmlns:xlink="http://www.w3.org/1999/xlink">http://www.w3.org/TR/2001/REC-xmlschema-2-

20010502</uri>.</mixed-citation>

    <non-normative-note>

        <label>NOTE</label>

        <p>When the reference "W3C XML Schema" is used in this Recommendation | International

Standard, it refers to W3C XML Schema Part&#x00A0;1 and W3C XML Schema Part&#x00A0;2.</p>

    </non-normative-note>

</ref>

<ref>

    <label>—</label>

    <std><std-ref>IETF RFC&#x00A0;2396 (1998)</std-ref>, <title>Uniform Resource Identifiers

(URI): Generic Syntax.</title></std>

</ref>

```

If a reference has a recognizable designator such as [1] (more commonly used in the bibliography section) then this is coded as a <label> within the <ref>.

In <mixed-citation>, any presentation formatting is captured as such, e.g. <bold>, <italic>.

## B.2.5 Numbered paragraphs

Legacy content may not have the attribute @sec-type="numbered-paragraph".

## B.2.6 Back matter

## Indexes and footnotes

In addition to the elements mentioned in 4.5, the back matter can contain indexes and / or, in IEC legacy documents, footnotes (as described below).

## Annex type coding

A difference between IEC and ISO persists in the explicit coding of <annex-type> in the traditional publication chains:

## ISO

The ISO coding duplicates information between @content-type and <annex-type>, but allows flexibility when rendering or extracting data. This will be done in content produced from eXtyles.

```html

<app-group>

    <app content-type="informative" id="sec_A">

    <label>Annex A</label><annex-type>(informative)</annex-type><title>Types of

proficiency testing schemes</title>

```

## IEC

![](page=3,bbox=[240, 120, 601, 282])

The annex type is not coded as text but will be derived from @content-type on rendering. IEC legacy files may have different @content-type values: inform / norm.

## Multiple lists inside bibliography (numbering continued)

Note that this is considered legacy tagging. This kind of bibliography structure is now deprecated.

Bibliography

ISO publications related to statistical techniques

[1] ISO 2602:1980, Statistical interpretation of test results — Estimation of the mean — Confidence interval

[2] ISO 2854:1976, Statistical interpretation of data — Techniques of estimation and tests relating to means and variances

IEC publications related to reliability analysis

[50] IEC 60050-191:1990, International Electrotechnical Vocabulary — Chapter 191: Dependability and quality of service

[51] IEC 60300-1:1993, Dependability management — Part 1: Dependability programme management

## is coded as:

```xml

<ref-list content-type="bibl" id="sec_bibl">

    <title>Bibliography</title>

    <ref-list content-type="bibl">

        <title>ISO publications related to statistical techniques</title>

        <ref id="biblref_1"><label>[1]</label><std><std-ref>ISO 2602:1980</std-ref>,

<title>Statistical interpretation of test results – Estimation of the mean – Confidence interval</title></std></ref>

        <ref id="biblref_2"><label>[2]</label><std><std-ref>ISO 2854:1976</std-ref>,

<title>Statistical interpretation of data – Techniques of estimation and tests relating to means and variances</title></std></ref>

    </ref-list>

    <ref-list content-type="bibl">

        <title>IEC publications related to reliability analysis</title>

        <ref id="biblref_50"><label>[50]</label><std><std-ref>IEC 60050-191:1990</std-ref>,

<title>International Electrotechnical Vocabulary – Chapter 191: Dependability and quality of service</title></std></ref>

        <ref id="biblref_51"><label>[51]</label><std><std-ref>IEC 60300-1:1993</std-ref>,

<title>Dependability management – Part 1: Dependability programme management</title></std></ref>

    ...

    </ref-list>

</ref-list>

```

## Multiple lists inside bibliography (numbering restarted)

This is also legacy tagging and is deprecated. The @id for each reference needs to be unique, whatever system is used for the numbering of the reference label.

![](page=4,bbox=[241, 119, 602, 281])

## Bibliography

ISO standards

[1] ISO 2602:1980, Statistical interpretation of test results — Estimation of the mean — Confidence interval

[2] ISO 2854:1976, Statistical interpretation of data — Techniques of estimation and tests relating to means and variances

Other publications

[1] ISO 9000:2000, Quality management systems — Fundamentals and vocabulary

[2] GUM:1993, Guide to the expression of uncertainty in measurement. BIPM, IEC, IFCC, ISO, IUPAC, IUPAP and OIML

## is coded as:

```xml

<ref-list content-type="bibl" id="sec_bibl">

  <title>Bibliography</title>

  <ref-list>

    <title>ISO standards</title>

    <ref id="biblref_1_1"><label>[1]</label>...</ref>

    <ref id="biblref_1_2"><label>[2]</label>...</ref>

  </ref-list>

  <ref-list>

    <title>Other Publications</title>

    <ref id="biblref_1_3"><label>[1]</label>...</ref>

    <ref id="biblref_1_4"><label>[2]</label>...</ref>

  </ref-list>

```

## Index

The index is included in <back>, after the bibliography and, in IEC legacy content, before any footnotes. It is coded within <index>.

If an index resulting from legacy conversion is present, only references to sections are listed, as page numbers are no longer relevant in XML.

For example:

<table border="1"><tr><td colspan="4">Index of definitions</td></tr><tr><td>Terms</td><td>IEV</td><td>subclause</td><td></td></tr><tr><td>A</td><td></td><td></td><td></td></tr><tr><td>ambient air temperature</td><td>441-11-13, MOD</td><td>3.8.9</td><td>[df1]</td></tr><tr><td>angle of overlap μ</td><td>551-16-05</td><td>3.5.5</td><td>[df2]</td></tr><tr><td>(auxiliary) arm</td><td>551-15-05</td><td>3.2.3</td><td>[df3]</td></tr><tr><td>(principal) arm</td><td>551-15-02</td><td>3.2.2</td><td>[df4]</td></tr></table>

is coded as:

![](page=5,bbox=[237, 119, 602, 283])

```xml

<index id="sec-index">

<index-title-group>

<title>Index of definitions</title></index-title-group>

<index-div>

<index-title-group>

<title>A</title></index-title-group>

<index-entry id="df-1">

<term>ambient air temperature</term>

<see-entry><related-object document-id="urn:iec:std:iec:60050-441::::#con-441.11.13" document-id-

type="uri"><std content-type="uri" std-id="urn:iec:std:iec:60050-441::::#con-441.11.13"><std-

ref>441&#8209;11&#8209;13, MOD</std-ref></std></related-object></see-entry>

<see-entry>3.8.9</see-entry>

<see-entry>df 1</see-entry></index-entry>

<index-entry id="df-2">

<term>angle of overlap <italic>&#956;</italic></term>

<see-entry><related-object document-id="urn:iec:std:iec:60050-551::::#con-551.16.05" document-id-

type="uri"><std content-type="uri" std-id="urn:iec:std:iec:60050-551::::#con-551.16.05"><std-

ref>551&#8209;16&#8209;05</std-ref></std></related-object></see-entry>

<see-entry>3.5.5</see-entry>

<see-entry>df 2</see-entry></index-entry>

<index-entry id="df-3">

<term>(auxiliary) arm</term>

<see-entry><related-object document-id="urn:iec:std:iec:60050-551::::#con-551.15.05" document-id-

type="uri"><std content-type="uri" std-id="urn:iec:std:iec:60050-551::::#con-551.15.05"><std-

ref>551&#8209;15&#8209;05</std-ref></std></related-object></see-entry>

<see-entry>3.2.3</see-entry>

<see-entry>df 3</see-entry></index-entry>

<index-entry id="df-4">

<term>(principal) arm</term>

<see-entry><related-object document-id="urn:iec:std:iec:60050-551::::#con-551.15.02" document-id-

type="uri"><std content-type="uri" std-id="urn:iec:std:iec:60050-551::::#con-551.15.02"><std-

ref>551&#8209;15&#8209;02</std-ref></std></related-object></see-entry>

<see-entry>3.2.2</see-entry>

<see-entry>df 4</see-entry></index-entry>

...

```

## B.2.7 Spaces, punctuation and formatting

Especially in legacy publications, there are elements such as spaces, tabs and line breaks, that serve formatting purposes. These should be replaced wherever possible or deleted if they are not necessary during the conversion to XML, unless they are significant, such as in formulae, tables, and example code.

Sequential spacing characters should be coded as a single space, unless they are significant.

Where spacing characters or tabs have been used to align blocks of text into columns, the text should instead be coded in a table or array.

## IEC legacy tagging

In IEC legacy publications, spaces are maintained in form fields.

Non-breaking spaces can be inserted to prevent automatic line breaks between two text portions. The following are a few patterns where a non-breaking space (&#x00A0; or &#160;) should be used.

These are usually found when the text follows/precedes numbers or numbering text such as A,B,C... or a,b,c ...

Some examples:

![](page=6,bbox=[238, 118, 602, 282])

[number] [SI Unit]

(Part)[space] ([0-9])

([0-9])[space] (%)

(ISO)[space]([0-9])

(ISO/TC)[space]([0-9])

$$
(\mathrm {N o t e}) [ \mathrm {s p a c e} ] ([ 0 - 9 ] [ \mathrm {s p a c e} ] \mathrm {t o e n t r y:})
$$

$$
(\mathrm {T a b l e}) [ \mathrm {s p a c e} ] ([ 0 - 9 ])
$$

$$
(\mathrm {F o r m u l a}) [ \mathrm {s p a c e} ] ([ \backslash ((0 - 9) ^ {*} \backslash) ])
$$

(Figure) [space] ([0-9])

(Clause)[space]([0-9])

(SC)[space]（[0-9]）

$$
(\mathrm {V o l u m e}) [ \mathrm {s p a c e} ] ([ 0 - 9 ])
$$

$$
(\mathrm {A t i c l e}) [ \mathrm {s p a c e} ] ([ \mathrm {A} - \mathrm {Z} | \mathrm {a} - \mathrm {z} ] [ | \backslash . | \backslash) ])
$$

(Step)[space]（[0-9]）

$$
(\mathrm {O I M L}) [ \mathrm {s p a c e} ] (\mathrm {D})
$$

$$
(\mathrm {A n n e x}) [ \mathrm {s p a c e} ] ([ \mathrm {A} - Z | a - z ] [ | \cdot | \cdot ])
$$

[space]（—[A-Z]）

[0-9] [space] [mathematical sign] [space] [0-9] (for formulae and other dyadic expressions) certain expressions do not require space: [mathematical sign] [0-9] [unit], e.g. $ + 3^{\circ} \mathrm{C} $

Numbers formatted with spaces, e.g. 1 000: a non-breaking space should be used, e.g. 1&#x00A0;000.

When processing legacy documents, it is recommended that non-standard fonts used for a semantic reason should be preserved. All punctuation characters (except soft hyphens) are to be considered significant and preserved.

Superscript, subscript, italic, bold, underlined, small caps, strike-through, mono-spaced etc. text is coded as it appears using: <sup>, <sub>, <italic>, <bold>, <underlined>, <sc>, <strike>, <monospace> etc.

The element <sc> is used to mark text that should appear in a font that creates smaller capital letters ("small caps"). Uppercase letters included in the tags will be preserved.

For example:

<p>... Sequence comparisons with programs <sc>gapped blast</sc> and <sc>PSI-blast</sc> and 434100 sequences of databases did not find ...</p>

![](page=7,bbox=[238, 119, 602, 282])

## B.2.8 Style type in paragraphs

In legacy content, sometimes alignment has been defined in an attribute of <p> using @style-type as follows.

Possible values of @style-type in <p> are:

align-left

- align-right

align-center

valign-top

- valign-bottom

- valign-middle

- indent

If more than one @style-type applies, separate them with a semi colon, e.g. @style-type="align-center;valign-middle".

@style-type can also be used inside <styled-content>; for additional values in this context, see 0.

## B.2.9 Formatting text with <styled-content>

In legacy content and redline documents, when text styling is used to convey meaning, this shall be done using <styled-content> rather than direct formatting ( <bold>, <italic> etc.).

Attributes

@style-type

@style

## @style-type / @specific-use

These attributes are most often used to mark up additions and deletions in redline documents.

ISO

Values for @style-type (in addition to those for alignment mentioned in ):

- addition (for additions, e.g. in redline versions; rendering will be in green)

- deletion (for deletions, e.g. in redline versions; rendering will be in red and strikethrough)

IEC

Values for @specific-use:

- insert (for additions, e.g. in redline versions; rendering will be in green)

- delete (for deletions, e.g. in redline versions; rendering will be in red and strikethrough)

![](page=8,bbox=[239, 118, 601, 282])

For example:

3. 4 rated capacity quantity of electricity $ C_{5}Ah $ (ampere-hours) declared by the manufacturer which a single cell can deliver when discharged at the reference test current of 0.2 $ I_{4}A $ to a final voltage of 1.0 $ V $ at $ +20^{\circ}C $ after charging, storing and discharging under the conditions specified in clause 4 capacity value of a cell or battery determined under specified conditions and declared by the manufacturer

## is coded as:

<term-sec id="con-3.4">

<label>3.4</label>

<tbx:termEntry id="te-3.4">

<tbx:langSet xml:lang="en">

<tbx:definition><styled-content specific-use="delete">quantity of electricity

<italic>C</italic><sub>5</sub>Ah (ampere-hours) declared by the manufacturer which a single cell can deliver when discharged at the reference test current of 0,2 <italic>I</italic><sub>t</sub>A to a final voltage of 1,0&#160;V at +20&#160;&#176;C after charging, storing and discharging under the conditions specified in <xref ref-type="sec" rid="sec-4">clause&#160;4</xref></styled-content>

<styled-content specific-use="insert">capacity value of a cell or battery determined under specified conditions and declared by the manufacturer</styled-content></tbx:definition>

<tbx:tig>

<tbx:term id="ter-rated_capacity">rated capacity</tbx:term>

<tbx:partOfSpeech value="noun"/>

<tbx:normativeAuthorization value="preferredTerm"/>

<tbx:termType value="fullForm"/></tbx:tig></tbx:langSet></tbx:termEntry></term-sec>

Where <styled-content> is not admitted, @specific-use is used on its own.

For example:

IEC 60038:2002, IEC standard voltages

IEC 60060-1:1989, High-voltage test techniques – Part 1: General definitions and test requirements

IEC 60071-2, Insulation co-ordination – Part 2: Application guidelines

IEC 60099-4, Surge arresters – Part 4: Metal-oxide surge arresters without gaps for a.c. systems

IEC 60507, Artificial pollution tests on high voltage insulators to be used on a.c. systems

IEC 60633, Terminology for high voltage direct current (HVDC) transmission

is coded as:

<ref-list content-type="norm-refs">

<ref><std><std-id std-id-link-type="urn" std-id-

type="dated">urn:iec:std:iec:60038:2002::::</std-id><std-ref>IEC&#160;60038</std-ref><styled-

content specific-use="delete">:2002</styled-content><title>IEC standard

voltages</title></std></ref>

<ref><std><std-id std-id-link-type="urn" std-id-type="dated">urn:iec:std:iec:60060-1::::</std-

id><std-ref>IEC&#160;60060-1</std-ref><styled-content specific-use="delete">:1989</styled-

content><title>High-voltage test techniques &#8211; Part&#160;1: General definitions and test

requirements</title></std></ref>

![](page=9,bbox=[239, 119, 602, 282])

```html

<ref><std><std-id std-id-link-type="urn" std-id-type="undated">urn:iec:std:iec:60071-

2:::::</std-id><std-ref>IEC&#160;60071-2</std-ref><title>Insulation co-ordination &#8211;

Part&#160;2: Application guide</title><styled-content specific-use="insert">lines</styled-

content></std></ref>

<ref><std><std-id std-id-link-type="urn" std-id-type="undated">urn:iec:std:iec:60099-

4:::::</std-id><std-ref>IEC&#160;60099-4</std-ref><title>Surge arresters &#8211; Part&#160;4:

Metal-oxide surge arresters without gaps for a.c. systems</title></std></ref>

<ref specific-use="delete"><std><std-id std-id-link-type="urn" std-id-

type="undated">urn:iec:std:iec:60507:::::</std-id><std-ref>IEC 60507</std-ref><title>Artificial

pollution tests on high-voltage insulators to be used on a.c. systems</title></std></ref>

<ref specific-use="delete"><std><std-id std-id-link-type="urn" std-id-

type="undated">urn:iec:std:iec:60633:::::</std-id><std-ref>IEC 60633</std-

ref><title>Terminology for high-voltage direct current (HVDC)

transmission</title></std></ref></ref-list></sec>

```

@style-type is also used with the value "normal" for plain text within a string of text of different style.

## For example:

## Annex C

## Illustration of real value encoding

(This annex does not form an integral part of this Recommendation | International Standard)

## is coded as:

```html

<app id="sec_C">

    <label>Annex C</label>

    <title>Illustration of real value encoding<break/><styled-content style-type="normal">(This

annex does not form an integral part of this Recommendation | International Standard)</styled-

content></title>

</app>

```

## @style

This is not currently used by ISO and IEC, but is maintained in these guidelines for potential future use cases.

For standards organizations that want to keep a number of named styles consistent throughout the document (e.g. for use by CSS), the use of @style with a predefined list of values is possible.

Generally, using specific fonts is discouraged in XML. However, in legacy content where the document explicitly states that certain fonts should be used, <styled-content> with @style should be used as shown below:

5. 3 In this Recommendation International Standard. bold Courier is used for ASN.1 notation and bold Arial is used for XSD notation and for XSD terms and concepts.

is coded as:

![](page=10,bbox=[239, 119, 602, 282])

```html

<sec id="iso-iec_8825-5_2008_en_sec_5.2">

    <label>5.3</label>

    <title />

    <p>In this Recommendation | International Standard, <styled-content style="font-weight: bold; font-family: Courier, monospace">bold Courier</styled-content> is used for ASN, 1 notation and <styled-content style="font-weight: bold; font-family: Arial, sans-serif">bold Arial</styled-content> is used for XSD notation and for XSD terms and concept.</p>

</sec>

```

## B. 2.10 Notes and examples

In legacy content, notes and examples retained their formatting and punctuation.

Case 1 - note with additional punctuation:

This Recommendation International Standard specifies the final XER encoding instructions that are to be applied as part of the defined mapping to ASN.1 types, but does not specify which syntactic form is to be used for the specification of those final XER encoding instructions, or the order or manner of their assignment.

NOTE - Implementers of tools generating these mappings may choose any syntactic form or order of assignment that results in the specified final XER encoding instructions being applied. Examples in this Recommendation International Standard generally use the type prefix form, but use of an XER Encoding Control Section may be preferred for the mapping of a complete XSD Schema, as a matter of style.

There are different ways (syntactically) of assigning XER encoding instructions for use in EXTENDED-XER encodings (for example, use of ASN.1 type prefix encoding instructions or use of an XER encoding control section). The choice of these syntactic forms is a matter of style and is outside the scope of this Recommendation International Standard.

is coded as:

```html

<non-normative-note>

    <label>NOTE —</label>

    <p>Implementers of tools generating these mappings may choose any syntactic form or order

of...<p>

</non-normative-note>

```

Case 2 - two notes in the form of a list:

9.2.3 Frequency weighting

A single frequency weighting, $ W_{1} $ , is recommended for the evaluation of the effects of vibration on the incidence of motion sickness.

NOTES

1 It is recommended that additional information about the motion conditions also be reported. This should include the frequency composition, duration and directions of motions.

2 There is some evidence that motions having similar frequencies and r.m.s. accelerations but different waveforms may have different effects.

is coded as:

![](page=11,bbox=[239, 119, 602, 283])

```html

<non-normative-note>

    <label>NOTES</label>

    <list list-type="order">

        <list-item><label>1</label><p>It is recommended...</p></list-item>

        <list-item><label>2</label><p>There is some...</p></list-item>

    </list>

</non-normative-note>

```

<div align="center">

Case 3 - two notes on separate lines:

</div>

<table border="1"><tr><td>NOTE 1</td><td>This is a note</td></tr><tr><td>NOTE 2</td><td>This is another note</td></tr></table>

is coded as:

```html

<non-normative-note>

    <label>NOTE 1</label>

    <p>This is a note</p>

</non-normative-note>

<non-normative-note>

    <label>NOTE 2</label>

    <p>This is another note</p>

</non-normative-note>

```

Case 4 - example:

EXAMPLE This is an example

is coded as:

```html

<non-normative-example>

    <label>EXAMPLE</label>

    <p>This is an example</p>

</non-normative-example>

```

## B.2.11 Lists

Values and usage of @list-type:

<table border="1"><tr><td>value</td><td>usage</td></tr><tr><td>simple</td><td>there is no prefix character before each item</td></tr><tr><td>bullet</td><td>the prefix character is a bullet</td></tr><tr><td>dash</td><td>the prefix character is a dash*</td></tr><tr><td>alpha-lower</td><td>the prefix character is a lowercase alphabetical character: a,b,c...</td></tr><tr><td>alpha-upper</td><td>the prefix character is an uppercase alphabetical character:A,B,C...</td></tr><tr><td>roman-lower</td><td>the prefix character is a lowercase roman numeral:i,ii,iii,iv...</td></tr></table>

![](page=12,bbox=[239, 119, 602, 282])

<table border="1"><tr><td>roman-upper</td><td>the prefix character is an uppercase roman numeral: I, II, III, IV...</td></tr><tr><td>order</td><td>any other ordered list: 1, 2, 3...</td></tr><tr><td colspan="2">$\cdot$ ISO generally only uses the em-dash for unnumbered and unordered list items.
For @list-type=&quot;order&quot;, ISO will update this to &quot;arabic&quot; in the coming months.</td></tr><tr><td colspan="2">IEC</td></tr><tr><td>value</td><td>usage</td></tr><tr><td>simple</td><td>there is no prefix character before each item</td></tr><tr><td>bullet</td><td>the prefix character is a bullet</td></tr><tr><td>dash</td><td>the prefix character is a dash</td></tr><tr><td>symbol</td><td>the prefix character is a symbol (possible if the symbol has semantic meaning but discouraged):▶■◎etc.</td></tr><tr><td>arabic</td><td>ordered list with arabic numerals as prefix:1,2,3,...</td></tr><tr><td>alpha-lower</td><td>ordered list with lowercase alphabetical prefix characters:a,b,c...</td></tr><tr><td>alpha-upper</td><td>ordered list with uppercase alphabetical prefix characters:A,B,C...</td></tr><tr><td>roman-lower</td><td>ordered list with lowercase roman numerals as prefix:i,ii,iii,iv...</td></tr><tr><td>roman-upper</td><td>ordered list with uppercase roman numerals as prefix:I,II,III,IV...</td></tr><tr><td>order</td><td>any other ordered list,e.g.&quot;Step I,Step II...&quot;or&quot;Error 1,Error 2&quot;etc.</td></tr><tr><td>other</td><td>-lists with non-sequential numbering(e.g.with item1 followed by item3)
-lists starting with a number or character other than&quot;1&quot;,&quot;I&quot;,&quot;i&quot;,&quot;A&quot;or&quot;a&quot;</td></tr></table>

## List type "simple"

The following indentation should be maintained by coding it as a list with @list-type="simple".

![](page=13,bbox=[241, 120, 601, 280])

Hardware

The hardware type consists of all the physical elements supporting processes.

Data processing equipment (active)

Automatic information processing equipment including the items required to operate independently.

Transportable equipment

Portable computer equipment.

Examples: laptop computer, Personal Digital Assistant (PDA).

Fixed equipment

Computer equipment used on the organization's premises.

Examples: server, microcomputer used as a workstation.

is coded as:

```xml

<list list-type="simple">

    <list-item>

        <p><underline>Hardware</underline></p>

        <p>The hardware type consists of all the physical elements supporting processes.</p>

        <list list-type="simple">

            <list-item>

                <p><underline>Data processing equipment (active)</underline></p>

                <list list-type="simple">

                    <list-item>

                        <p>Automatic information processing equipment including the items

required to operate independently.</p>

                    </list-item>

                </list>

            </list-item>

            <list-item>

                <p><underline>Transportable equipment</underline></p>

                <list list-type="simple">

                    <list-item>

                        <p>Portable computer equipment.</p>

                    </list-item>

                    <list-item>

                        <p><non-normative-example><label>Examples</label><p>laptop

computer, Personal Digital Assistant (PDA).</p></non-normative-example></p>

                    </list-item>

                </list>

            </list-item>

            <list-item>

                <p><underline>Fixed equipment</underline></p>

                <list list-type="simple">

                    <list-item>

                        <p>Computer equipment used on the organization's premises.</p>

                    </list-item>

                    ...

                </list-item>

            </list>

        </list-item>

    </list>

```

![](page=14,bbox=[238, 119, 601, 281])

## B.2.12 Code

Instead of code, <preformat> was used to capture code. <preformat> will be changed to <code> in the future by both organizations.

Preformatted text, which may contain emphasis elements for syntax coloring, or it may contain an external link to a binary executable file, can be included in <code> .

## B.2.13 Boxed text

Boxed text is now considered deprecated. <boxed-text> may exist in legacy content, but will not be accommodated in the OSD.

<boxed-text> is not used for content with labels such as "Warning / Important / ..." - for these, notes are used.

## B.2.14 Tables

Nested tables may appear in legacy documents, but are deprecated.

Table width

In ISO, the width of each column is captured as a percentage, but the overall table width is set in <table> @width in absolute number of pixels.

For example:

```html

<table-wrap id="tab_B.1" position="float">

<label>Table&#x00A0;B.1</label>

<caption>

<title>Dimensional requirements for different vehicle types within the Japanese

regulation</title>

</caption>

<table width="652">

<col width="25%"/>

<col width="25%"/>

<col width="25%"/>

<col width="25%"/>

<thead>

```

## IEC

In IEC, the width of each column is captured as a percentage. No absolute number of pixels is indicated for table width.

For example:

```html

<table-wrap id="tab-1">

<label>Table&#160;1</label>

<caption>

<title>Spectrum analyser parameters</title></caption>

<table>

<col align="center" valign="middle" width="12%"/>

<col align="center" valign="middle" width="22%"/>

```

![](page=15,bbox=[239, 119, 601, 281])

```html

<col align="center" valign="middle" width="14%"/>

<col align="center" valign="middle" width="10%"/>

<col align="center" valign="middle" width="10%"/>

<col align="center" valign="middle" width="18%"/>

<col align="center" valign="middle" width="14%"/>

<thead>

```

## Table header row formatting

## ISO

Table header rows include <bold> formatting.

```html

<thead>

<tr>

<th><bold>Bacteria species</bold></th>

<th><bold>WDCM code</bold></th>

</tr>

</thead>

```

## IEC

Table headers are not tagged as <bold> - they are bolded automatically during rendering at IEC. Non-bold text inside a table header is put inside <roman> tags to ensure plain formatting.

For example:

<div align="center">

Table 1 - Working example for gamma distortion from viewing direction

</div>

<table border="1"><tr><td colspan="6">Reporting-Sample data</td></tr><tr><td colspan="6">Grey-scale luminance and gamma values at various angles</td></tr><tr><td rowspan="2">Level designation</td><td rowspan="2">Grey level, $V_{j}$</td><td colspan="5">Luminance values from different angles $L(\theta,\Phi)$</td></tr><tr><td>$L(0,0)$</td><td>$L(-20,180)$</td><td>$L(20,0)$</td><td>$L(20,90)$</td><td>$L(-20,270)$</td></tr><tr><td>White(9)</td><td>255</td><td>555,7</td><td>181,2</td><td>180,3</td><td>160,8</td><td>164,7</td></tr></table>

is coded as:

```html

<th>Grey level,

<p id="p-101"><italic>V</italic><sub><roman>j</roman></sub></p></th>

```

## Table footnotes

ISO

Table footnotes are coded using <fn> with @id prefixed with "table-fn" instead of "fn".

@ref-type has a value of "table-fn".

![](page=16,bbox=[240, 120, 601, 281])

The @id should be in the following format Formal tables: table-fn_[table footnote sequence within the document] Informal tables: table-fn_[id of the informal table].[fn sequence within the table] For example, for footnote 1 of table 2: table-fn_2.1.

<table border="1"><tr><td>Frequency bandwidth</td><td>One-third-octave mid-band frequencyHz</td><td>Standard deviation of reproducibility，$\sigma_{R0}$dB</td></tr><tr><td rowspan="4">One-third-octave</td><td>100 to 160</td><td>30</td></tr><tr><td>200 to 315</td><td>20</td></tr><tr><td>400 to 5000</td><td>15</td></tr><tr><td>6300 to 10000</td><td>25</td></tr><tr><td colspan="2">A-weighted per Annex E</td><td>$1.5^{a}$</td></tr><tr><td colspan="3">$^{a}$ Applicable to noise sources which emit sound with a relatively “flat” spectrum in the frequency range from 100Hz to 10000Hz。</td></tr></table>

![](page=17,bbox=[239, 119, 602, 282])

is coded as:

<table-wrap id="tab_2">

  <label>Table 2</label>

  <caption>

    <title>Typical upper bound values of the standard deviation of reproducibility of

the method,<italic>σ</italic><sub><italic>R</italic>0</sub>, for sound power levels and

sound energy levels determined in accordance with this International Standard</title>

  </caption>

  <table border="1" frame="box" rules="all">

    <col align="center" valign="middle" width="112.35"/>

    <col align="center" valign="middle" width="130.40"/>

    <col align="center" valign="middle" width="130.40"/>

    <thead>

      <tr>

        <th>Frequency bandwidth</th>

        <th>One-third-octave mid-band frequency<break/><styled-content

style="normal">Hz</styled-content></th>

        <th>Standard deviation of reproducibility, <styled-content

style="normal"><italic>σ</italic><sub><italic>R</italic>0</sub></styled-

content><break/><styled-content

style="normal">dB</styled-content></th>

      </tr>

    </thead>

    <tbody>

      <tr>

        <td rowspan="4">One-third-octave</td>

        <td>100 to 160</td>

        <td>3,0</td>

        ...

      </tr>

      <tr>

        <td align="left" colspan="2">A-weighted per Annex E</td>

        <td>1,5<xref ref-type="table-fn" rid="table-

fn_2.1"><sup>a</sup></sup></xref></td>

      </tr>

    </tbody>

  </table>

  <table-wrap-foot>

    <fn id="table-fn_2.1"><label><sup>a</sup></sup></label><p>Applicable to noise

sources which emit sound with a relatively “flat” spectrum in the frequency range

from 100 Hz to 10 000 Hz.</p></fn></table-wrap-foot>

</table-wrap>

## Legacy tagging

In legacy content, table footnotes were captured in <tfoot>. Going forward, <table-wrapfoot> is the preferred and used element.

## IEC

@ref-type has a value of "fn".

@id="tfn-x-y" where "x" is the table number as coded in <label> and "y" is the sequential number of the footnote inside the table.

![](page=18,bbox=[239, 119, 602, 281])

For example:

<table border="1"><tr><td rowspan="2">Ref. Clause</td><td rowspan="2">Requirement</td><td colspan="3">Method(one or more of the specified methods apply)</td></tr><tr><td>Analysis</td><td>Testing</td><td>Visual inspection</td></tr><tr><td>4.7.3.4</td><td>Additional requirements for the EMS function</td><td>Xa</td><td>Xa</td><td>Xa</td></tr><tr><td>4.13</td><td>Reset</td><td></td><td>X</td><td>X</td></tr><tr><td>4.15</td><td>Configurability protection</td><td></td><td>X</td><td></td></tr><tr><td colspan="5">aAll marked methods apply for this verification</td></tr></table>

## is coded as:

```html

<table-wrap id="tab-4">

...

<table>

...

<thead>

<tr>

<th>Ref. Clause</th>

<th>Requirement</th>

<th>Method (one or more of the specified methods apply)</th></tr>

<tr>

<th>Analysis</th>

<th>Testing</th>

<th>Visual inspection</th></tr></thead>

<table-wrap-foot>

<tr>

<td colspan="5" style="padding: 0 3.5px 0 3.5px;">

<fn id="tfn-4-1">

<label>a</label>

<p id="p-204">All marked methods apply for this verification</p></fn></td></tr></table-wrap-foot>

<tbody>

<tr>

<td style="padding: 0 3.5px 0 3.5px;"><xref ref-type="sec" rid="sec-

4.7.3.4">4.7.3.4</xref></td>

<td style="padding: 0 3.5px 0 3.5px;">Additional requirements for the <xref ref-type="other"

rid="abb-ems">EMS</xref> function</td>

<td style="padding: 0 3.5px 0 3.5px;">X<xref ref-type="fn" rid="tfn-4-1">a</xref></td>

<td style="padding: 0 3.5px 0 3.5px;">X<xref ref-type="fn" rid="tfn-4-1">a</xref></td>

<td style="padding: 0 3.5px 0 3.5px;">X<xref ref-type="fn" rid="tfn-4-1">a</xref></td>

<td style="padding: 0 3.5px 0 3.5px;"/></tr>

<tr>

...

```

## Table frames

Table frames are used when drawing borders for a table. Different values in the @frame attribute will enable different types of output.

While IEC makes use of @frame, ISO does not currently use this attribute.

## Alignment of tables

Alignment of tables on the page will not be coded into the table. This will instead be handled by the rendering mechanism.

![](page=19,bbox=[239, 119, 601, 281])

Vertical text rotation in a cell is coded using @style within <td> with value @style="transform: rotate(-90deg)". Other forms of rotation (e.g. 45 degrees) are discouraged.

While IEC is using this value, ISO is not currently using it, but intends to in the future.

<div align="center">

Table A.1 — Evaluation tests for consideration

</div>

<table border="1"><tr><td colspan="3">Medical device categorization by</td><td colspan="8">Biological effect</td></tr><tr><td colspan="2">nature of body contact(see 5.2)</td><td rowspan="4">contact duration(see 5.3)A-limited(≤24h)B-prolonged(&gt;24h to30d)C-permanent(&gt;30d)</td><td rowspan="4">Cytotoxicity</td><td rowspan="4">Sensitization</td><td rowspan="4">Irritation or intracutaneous reactivity</td><td rowspan="4">Systemic toxicity(acute)</td><td rowspan="4">Subchronic toxicity(subacute toxicity)</td><td rowspan="4">Genotoxicity</td><td rowspan="4">Implantation</td><td rowspan="4">Haemocompatibility</td></tr><tr><td rowspan="3">Category</td><td rowspan="3">Contact</td></tr><tr><td rowspan="2">Skin</td></tr><tr><td>B</td><td>X</td><td>X</td><td>X</td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="4">Surface device</td><td rowspan="3">Mucosal membrane</td><td>A</td><td>X</td><td>X</td><td>X</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>B</td><td>X</td><td>X</td><td>X</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

## Table cell alignment

In XHTML, the default alignment of table header data is defined as "center".

Therefore, @align is not used when the table header data are aligned center in the source. @align is coded with a different value only when the alignment differs.

This does not depend on the alignment used for <col>

## B.2.15 Formulae

For numbered formulae, the formula ID should match the label of the formula.

<table border="1"><tr><td>ISOFor example, formula_1 for Formula 1.</td></tr><tr><td>&lt;disp-formula id=&quot;formula_1&quot;&gt;&lt;label&gt;(1)&lt;/label&gt;</td></tr><tr><td>IECFor example, for-1 for Formula 1.</td></tr><tr><td>&lt;disp-formula id=&quot;for-1&quot;&gt;&lt;label&gt;(1)&lt;/label&gt;</td></tr></table>

![](page=20,bbox=[240, 119, 601, 281])

## ISO

For unnumbered formulae, there are no formula IDs on <inline-formula>. IDs may be found on the captured mathML element within <inline-formula>.

## IEC

Unnumbered formulae can appear inline, but also as block formulae.

For inline formulae, there are no IDs on <inline-formula> itself, but on the MathML element within <inline-formula>.

For unnumbered block formulae, the formula ID uses the structure "for-informal-X-Y", where X is the number of the subclause and Y the sequential number of the unnumbered formula inside the subclause, for example:

<disp-formula id="for-informal-5.1.3-1">

Generally, <disp-formula> is used for unnumbered block formulae.

## Legacy tagging

However, some legacy coding uses <inline-formula> with @display="block" in the respective <mml:math>:

```html

<inline-formula id="for-informal-8.3.1-1">

<mml:math display="block" id="mml-m1">

<mml:mrow>

...

```

## Formula keys

Keys to a formula (following the pattern "where X = Y") are coded as <def-list> with @list content = "formula", with the word "where" as the <label>. The elements of that list are coded as pairs inside <def-item>. Each <def-item> contains one <term> and one <def>.

For example:

$$
L = \frac {\mu l}{2 \pi} \left[ \ln \left(\frac {4 l}{d}\right) - 1 \right] \mathrm {H}
$$

where

$$
P
$$

$$
= 4 \pi \times 1 0 ^ {- 7} \mathrm {H} / \mathrm {m};
$$

1 is the length of the wire in m;

is the diameter of the wire in m.

![](page=21,bbox=[239, 119, 602, 282])

## is coded as:

```html

<def-list list-content="formula">

<label>where</label>

<def-item>

<term><italic>&#x03bc;</italic></term>

<def>

<p id="p-183">=&#x00A0;4&#x03C0;&#x00a0;&#x00d7;&#x00a0;10<sup>&#x2212;7</sup> H/m;</p></def></def-

item>

<def-item>

<term><italic>l</italic></term>

<def>

<p id="p-184">is the length of the wire in m;</p></def></def-item>

```

## IEC

Legacy tagging at IEC sometimes uses <def-head> instead of <label> to code the word "where".

<def-list> only allows the coding of pairs of <term> and <def>. If there is more than one definition for each <term> (e.g. a definition text and a symbol), a regular table will be used to code the key.

## ISO

## Under investigation for future implementation:

ISO aims to align with the Guidelines and use the above.

Until this is integrated into the ISO/CS production chain, formula keys will be coded in <array>.

Example:

```html

<p>where</p>

<array id="tab_c">

<table width="652">

<col width="4.08%"/>

<col width="5.81%"/>

<col width="90.11%"/>

<tbody>

<tr>

<td align="left" scope="row" valign="top"> </td>

<td align="left" valign="top"><italic>P</italic></td>

<td align="left" valign="top">is the bacterial concentration (cfu/ml);</td>

</tr>

<tr>

<td align="left" scope="row" valign="top"> </td>

<td align="left" valign="top"><italic>Z</italic></td>

<td align="left" valign="top">is the average number of colonies in the three Petri dishes (cfu);</td>

</tr>

<tr>

<td align="left" scope="row" valign="top"> </td>

<td align="left" valign="top"><italic>D</italic><sub>F</sub></td>

<td align="left" valign="top">is the dilution factor.</td>

</tr>

</tbody></table></array>

```

![](page=22,bbox=[239, 119, 602, 281])

## MathML

Every <mml:math> , irrespective of whether it is contained in a <disp-formula> or an <inlineformula> element, contains an @id number which may be different from the label of the <dispformula> .

If one <disp-formula> contains more than one mathematical expression laid out on separate lines, these are contained in one <mml:math>.

The @id is prefixed "mml_m[number]", with [number] representing the sequential position of the <mml:math> element in the document, for example:

```html

<disp-formula id="formula_1">

    <label>(1)</label>

    <mml:math id="mml_m5">

        ...

    </mml:math>

</disp-formula>

```

The ID corresponds to the name of a graphical representation of the formula (.png) that is delivered inside the asset folder and can be used as an alternative in case of problems with the rendering of MathML.

No detailed instructions are provided here for the coding of MathML; we assume that this will be handled by a specialized WYSIWYG tool that will generate the codes automatically.

## B.2.16 Figures and graphics

## Attributes of <fig>

ISO

@id - fig_X, where X is the figure number contained in the label.

@fig-type - usually this has a value of "figure".

IEC

@id - fig-X, where X is the figure number contained in the label.

## Graphics

The name of the graphic file should match the ID of the figure, prefixed by "fig".

<table border="1"><tr><td>ISO For example,fig_1 for Figure 1.</td></tr><tr><td>IEC For example,fig-1 for Figure 1.</td></tr></table>

![](page=23,bbox=[239, 119, 602, 282])

The names of inline graphics and graphics which are not part of figures are prefixed by "img".

## ISO

For example, img_21139-1_ed1TabfigA1a.

The filename convention is:

img_{standard number}{-standard part number}_ed{edition number}{image type and number}

Annex images are denoted by 'A' before the number. Numbering must be sequential throughout the document for its type (i.e. all inline graphics must follow the same naming convention and be sequentially numbered). Image types and numbering used are as follows:

<table border="1"><tr><td> Convention</td><td>Type</td><td>Example</td></tr><tr><td>Tabfig</td><td>Table figure</td><td>img_ed1Tabfig2
img_ed1Tabfig2a
img_ed1TabfigB2</td></tr><tr><td>fig</td><td>Figure</td><td>img_ed2figB12c
img_ed1fig5</td></tr><tr><td>fig_key</td><td>Figure key</td><td>img_ed1fig1_key1</td></tr><tr><td>fig_language</td><td>Translated language figures</td><td>img_ed1fig1_f
img_ed1fig1_e</td></tr></table>

## IEC

For example, img-10.1

The filename convention is: img-X-Y, where X is the page number in the PDF and Y the sequential number of the image on that page.

```html

<fig id="fig-4">

<label>Figure&#160;4</label>

<caption>

<title>Example for a typical test set up for measurement of conducted and/or radiated disturbances from a floor standing EUT, 3D view</title></caption>

<graphic xlink:href="asset/fig-4"/>

<def-list>

<def-item>

<term id="figk-4-1">

<inline-graphic xlink:href="asset/img-36.1"/></term>

<def>

<p>interconnecting cables</p></def></def-item></def-list></fig>

```

![](page=24,bbox=[239, 118, 602, 282])

## Figure keys

<table border="1"><tr><td>ISO
In ISO, the figure key is coded in table within table-wrap inside fig with a content-type attribute of fig-index</td></tr><tr><td>IEC
In IEC, the figure key is coded inside fig, in a def-list with @list-content=&quot;figure&quot; and the word &quot;Key&quot; as its title. Each element described in the key is made up of a def-item containing term and def.</td></tr></table>

## Sample figure:

<table><tr><td>Key</td></tr><tr><td>A1 First Item A3 Third Item</td></tr><tr><td>A2 Second Item A4 Fourth Item</td></tr><tr><td>NOTE A note about this figure</td></tr></table>

![](page=25,bbox=[239, 119, 602, 282])

## Sample coding:

```html

<fig id="fig_1">

  <label>Figure 1</label>

  <caption><title>Example circuit</title></caption>

  <graphic xlink:href="fig_1"/>

  <table-wrap content-type="fig-index">

    <caption><title>Key</title></caption>

    <table>

      <col width=15/>

      <col width=150/>

      <col width=15/>

      <col width=150/>

      <tbody>

        <tr>

          <td>A1</td>

          <td>First Item</td>

          <td>A3</td>

          <td>Third Item</td>

        </tr>

        <tr>

          <td>A2</td>

          <td>Second Item</td>

          <td>A4</td>

          <td>Fourth Item</td>

        </tr>

      </tbody>

    </table>

    </table-wrap>

    <non-normative-note>

      <label>NOTE</label>

      <p>A note about this figure</p>

    </non-normative-note>

  </fig>

```

![](page=26,bbox=[241, 120, 602, 281])

## IEC

For example:

![](page=26,bbox=[493, 608, 1571, 1265])

Key

P is the connection for apparatus under test

1 for the symmetric component

2 for the asymmetric component

S double pole double throw switch

Z measuring receiver input impedance

Figure A.2 - Example of a $ \Delta $ - AMN for a measuring receiver with unbalanced input

## is coded as:

![](page=27,bbox=[238, 119, 602, 283])

```html

<fig id="fig-A.2">

<label>Figure&#x00A0;A.2</label>

<caption>

<title>Example of a 150 &#x2126; <xref ref-type="other" rid="abb-&#x03b4;-an">&#x0394;-AN</xref> for low current drain across the AN for the measurement of asymmetric and symmetric disturbance voltages</title></caption>

<graphic xlink:href="asset/fig-A.2"/>

<def-list list-content="figure">

<label>Key</label>

<def-item>

<term id="figk-A.2-1">P</term>

<def>

<p id="p-256">EUT port of the AN</p></def></def-item>

<def-item>

<term id="figk-A.2-2">1</term>

<def>

<p id="p-257">switch position for measurement of the symmetric voltage component</p></def></def-item>

<def-item>

<term id="figk-A.2-3">2</term>

<def>

<p id="p-258">switch position for measurement of the asymmetric voltage component</p></def></def-item>

<def-item>

<term id="figk-A.2-4">S</term>

<def>

<p id="p-259">double pole double throw switch</p></def></def-item>

<def-item>

<term id="figk-A.2-5"><italic>Z</italic></term>

<def>

<p id="p-260">measuring receiver input impedance</p></def></def-item></def-list></fig>

```

## Subfigures and multiple graphics within a figure

## ISO

The caption of a sub-figure (e.g. "a) - title of sub-figure") is coded in <title> within a <caption> within the <graphic>.

The rest of the sub-figure caption should be captured as a label within the <graphic> (excluding any trailing dash), for example:

```html

<graphic xlink:href="fig_1.1" id="fig_1.1">

    <label>a)</label>

    <caption><title>title of sub-figure</title></caption>

</graphic>

```

## IEC

If the figure contains multiple graphics, then each graphic is captured as a separate <graphic> within <fig>.

If the figure consists of multiple sub-figures (each with their own caption), then each subfigure is captured as a separate <fig> inside <figure-group>.

Each sub-figure has an @id based on its label.

![](page=28,bbox=[239, 119, 602, 282])

## For example:

```html

<fig-group id="fig-3">

<label>Figure&#160;3</label>

<caption>

<title>Example for a typical cable arrangement for measurements of radiated disturbances in

3&#160;m separation distance, Table-top EUT</title></caption>

<fig id="fig-3a">

<label>Figure&#160;3a</label>

<caption>

<title>Top view</title></caption>

<graphic xlink:href="asset/fig-3a"/></fig>

<fig id="fig-3b">

<label>Figure&#160;3b</label>

<caption>

<title>Side view</title></caption>

<graphic xlink:href="asset/fig-3b"/></fig></fig-group>

```

## B.2.17 Terms and definitions

## Usage of TBX vs. <term-display>

There are two different options for tagging terms and definitions. Both structures occur optionally inside the <term-sec> container element:

- one is TBX

- the other is a simpler, less powerful alternative, <term-display>.

<table border="1"><tr><td>ISO
ISO uses TBX exclusively.</td></tr><tr><td>IEC
IEC uses TBX wherever possible. In redline documents and certain series where the elements are arranged in a special way and layout is important to the entry, IEC also uses <term-display&gt;</td></tr></table>

The <term-sec> container element also includes <label>, which contains the number of the terminological entry.

## TBX (based exclusively on semantic information)

TBX is a concept-oriented exchange format for data from terminological databases. The TBX element <tbx:termEntry> models a term using the TBX-namespace vocabulary and ontology for terms. It can record information about any number of synonymous terms and multiple languages. The TBX vocabulary in NISO STS is derived and extended from ISO 30042. For usage information and contents, see the documentation at:

https://www.iso.org/schema/nisosts/v0.2/doc/tbx/index.html

![](page=29,bbox=[238, 119, 602, 282])

## Part of speech

In NISO STS v.1.0, there was no value "undefined". Therefore, all legacy conversion used "noun" as the default value. While this may be correct in most cases, it is not a reliable value. We therefore recommend not basing any programming on this value.

## <term-display> (more appearance oriented)

The NISO STS element <term-display> uses natural language to describe terms, and may incorporate semantic term elements such as definition (<def>) and part of speech (<part-of speech>). Semantic tagging is encouraged, but not enforced. It is a more appearance-oriented encoding of terminological data that may be used when:

- it is difficult to generate the desired formatted display from a TBX entry

- converting back-catalogue documents, in cases where it is difficult to create a useful TBX term entry from an appearance-oriented input document

Generally, ISO and IEC will use TBX. In some cases of legacy conversion, however, IEC uses <termdisplay> to ensure all elements are correctly displayed. For usage, see below.

## IDs

The ID of the terminological entry is derived from the entry number contained in <label> and is used for both <term-sec> and <tbx:termEntry>. IEC has an @id on <tbx:term> as well.

ISO

<term-sec>: @id has prefix “sec_”

<tbx:term-entry>: @id has prefix “term_”

<term-sec id="sec_3.1">

    <label>3.1</label>

    <tbx:termEntry id="term_3.1">

        <tbx:langSet xml:lang="en">

            <tbx:definition>The point in an encoding...boundary.</tbx:definition>

            <tbx:tig>

                <tbx:term>alignment point</tbx:term>

                <tbx:partOfSpeech value="noun"/>

            </tbx:tig>

        </tbx:langSet>

    </tbx:termEntry>

</term-sec>

IEC

<term-sec>: @id has prefix “con-”

<tbx:term-entry>: @id has prefix “te-”

<tbx:term>: @id corresponds to the term itself

![](page=0,bbox=[239, 119, 602, 283])

```html

<term-sec id="con-3.1.3">

<label>3.1.3</label>

<tbx:termEntry id="te-3.1.3">

<tbx:langSet xml:lang="en">

<tbx:definition>fluctuating pressure superimposed on the static pressure</tbx:definition>

<tbx:note id="nte-3.1.3-1">Sound pressure is expressed in pascal.</tbx:note>

<tbx:note id="nte-3.1.3-2">Sound pressure is usually expressed through the use of a decibel scale, as sound pressure level (see <xref ref-type="other" rid="con-3.1.4">3.1.4</xref>).</tbx:note>

<tbx:tig>

<tbx:term id="ter-sound_pressurep">sound pressure</tbx:term>

<tbx:partOfSpeech value="noun"/>

<tbx:normativeAuthorization value="preferredTerm"/>

<tbx:termType value="fullForm"/></tbx:tig>

<tbx:tig>

<tbx:term id="ter-p"><italic>p</italic></tbx:term>

<tbx:partOfSpeech value="noun"/>

<tbx:normativeAuthorization value="admittedTerm"/>

<tbx:termType value="symbol"/></tbx:tig>

</tbx:langSet></tbx:termEntry></term-sec>

```

## Source coding

<table border="1"><tr><td>ISO
ISO do not code <std> for the standards found inside <tbx:source>.</td></tr><tr><td>IEC
IEC do code references inside <tbx:source>.</td></tr></table>

## B.2.18 Cross-references

## Attributes of <xref>

- @ref-type - type of target

- @rid-ID of the target

- Possible values of @ref-type:

- <xref ref-type="app">

- <xref ref-type="bibr">

- <xref ref-type="disp-formula">

- <xref ref-type="fig">

- <xref ref-type="fn">

- <xref ref-type="list">

![](page=1,bbox=[238, 119, 602, 282])

- <xref ref-type="sec">

- <xref ref-type="table">

- <xref ref-type="table-fn">

- <xref ref-type="other"> (for <abb>, <term-sec>, <tbx:term>)

For example:

```xml

<xref ref-type="fn" rid="fn1">1</xref>

```

Cross-references to the other sections of the document from the terminology section

<tbx:see> is used for references from the terms and definitions to other clauses, tables, figures etc. in the document, with @target containing the ID of the cross-referenced element.

For example:

3. 41 subject individual who participates in a clinical investigation NOTE See Annex A for more information.

is coded as:

```xml

<term-sec id="sec_3.41">

    <label>3.41</label>

    <tbx:termEntry id="term_3.41">

        <tbx:langSet xml:lang="en">

            <tbx:definition>individual who participates in a clinical investigation

</tbx:definition>

            <tbx:see target="sec_A"/>

            <tbx:tig>

                <tbx:term>subject</tbx:term>

                <tbx:partOfSpeech value="noun"/>

            </tbx:tig>

        </tbx:langSet>

    </tbx:termEntry>

</term-sec>

```

## B.2.19 Footnotes

## Attributes of <xref>

@ref-type="fn"

@rid - reference to the @id of the footnote text

ISO

![](page=2,bbox=[240, 119, 601, 281])

ISO provides alphanumeric characters, and sometimes parentheses, within <label> and tagged as superscript.

## Example

<xref ref-type="fn" rid="fn_1"><sup>1</sup></sup></xref><fn id="fn_1">

<label><sup>1</sup></sup></label><p> MINITAB is the trade name of a product supplied by Minitab Inc. JMP is the trade name of a product supplied by SAS Institute Inc. Q-DAS is the trade name of a product supplied by Q-DAS GmbH. This information is given for the convenience of users of this document and does not constitute an endorsement by ISO of these products.</p></fn>

## IEC

No <sup>sup>} is used, the rendering of footnote references is left to the stylesheet, based on the @ref-type="fn".

For example:

Draw the so-called forbidden area symmetrical to the main lobe directions on both sides of the pattern $ ^{2} $ where the amplitude is $ \leq-3 $ dB for $ \pm15^{\circ} $

is coded as:

<p id="p-490">Draw the so-called forbidden area symmetrical to the main lobe directions on both sides of the pattern<xref ref-type="fn" rid="foo-2">2</xref>) where amplitude is

&#8804;&#160;&#8211;3&#160;dB for &#177;15&#176;.</p>

Footnote references in the bibliography section are coded with <xref>. Their footnote text is added to the document footnotes.

For example:

[6] ISO 9000:— $ ^{1)} $ , Quality management systems — Fundamentals and vocabulary

is coded as:

<ref id="biblref_6"><label>[6]</label><std><std-ref>ISO 9000</std-ref>:—<xref ref-type="fn" rid="fn_27"><sup>1)</sup></sup></xref>, Quality management systems — Fundamentals and vocabulary</std></ref>

## Attributes of <fn>

@id - should use sequential numbering (order of the footnote inside the document)

## ISO

Footnote text is placed at the point of use in the text.

![](page=3,bbox=[240, 118, 601, 282])

IEC

Footnote text is placed at the point of use in the text.

Legacy tagging:

Footnote texts are collected inside <fn-group> in <back>. They are the last part of the document.

For example:

<fn-group>

<fn id="foo-1">

<label>1</label>

<p id="p-396">Figures between square brackets refer to the <xref ref-type="sec" rid="sec-bibliography">Bibliography</xref>.</p></fn>

<fn id="foo-2">

<label>2</label>

<p id="p-397">To be published.</p></fn></fn-group>

## B.2.20 References to external standards

ISO

ISO use <std-ref> inside <std>.

For example:

3 Terms and definitions

For the purposes of this document, the terms and definitions given in ISO 7183, ISO 8573-7 and the following apply.

is coded as:

```xml

<sec id="sec_3" sec-type="terms">

    <label>3</label>

    <title>Terms and definitions</title>

    <p>For the purposes of this document, the terms and definitions given in <std std-

id="iso:std:iso:19111:en" type="undated"><std-ref>ISO 19111</std-ref></std> and the following

apply.</p>

    ...

```

IEC

IEC use <std-id> inside <std>.

For example:

![](page=4,bbox=[239, 119, 601, 281])

IEC 62906-5-1 has been prepared by IEC technical committee 110: Electronic displays. It is an International Standard.

is coded as:

<p id="p-10"><std><std-id std-id-link-type="urn" std-id-type="dated">urn:iec:std:iec:62906-5-1:2021-11::::</std-id><std-ref>IEC&#160;62906&#8211;5&#8211;1</std-ref></std> has been prepared by IEC technical committee 110: Electronic displays. It is an International Standard.</p>

## Reference to a section, figure etc. in an external standard

References are also made to a particular section or other content element (figure, table, equation...) inside a standard. They are coded as follows:

ISO

ISO/IEC Guide 98-3:2008, 7.3.1; ISO 1234:2011, Equation (1)

is coded as:

<std><std-ref>ISO/IEC Guide 98-3:2008<std-ref>, 7.3.1</std>; <std><std-ref>ISO 1234:2011<std-ref>, Equation (1)</std>

## IEC

This part of IEC 60027 is intended to replace Clause 11 of IEC 60027-2:2000.

is coded as:

<p id="p-14">This part of <std><std-id std-id-link-type="urn" std-id-type="dated">

urn:iec:std:iec:60027-6:2006-12::::</std-id><std-ref>IEC&#160;60027</std-ref></std> is intended to replace <std><std-id std-id-link-type="urn" std-id-type="dated">

urn:iec:std:iec:60027-2:2000-11::::#sec-11</std-id><std-ref>Clause&#160;11 of IEC&#160;60027&#8209;2:2000</std-ref></std>.</p>

## B.2.21 URLs

A URL is coded using <uri>.

For example:

Further information is available at http://my.url on the interweb.

is coded as:

![](page=5,bbox=[239, 119, 602, 282])

<p>Further information is available at <uri>http://my.url</uri> on the interweb.</p>

Incomplete URLs, e.g. URLs without http://, should be tagged with <ext-link>.

<ext-link> is also used when there is display text which hides the actual link. @xlink:href then contains the actual link.

For example:

<table border="1"><tr><td>For the purposes of research on service management standards, users are encouraged to share their views on ISO/IEC 20000-1 and their priorities for changes to the rest of the ISO/IEC 20000 series. Click on the link below to take part in the online survey.</td></tr><tr><td>ISO/IEC 20000-1 online survey</td></tr><tr><td>http://www.surveymonkey.com/s/20000-1</td></tr></table>

is coded as:

<p style-type="align-center"><ext-link xlink:href="http://www.surveymonkey.com/s/20000-1">ISO/IEC 20000-1 online survey</ext-link></p>

## Line breaks and web addresses inside <mixed-citation>

Line breaks and web addresses can exist within legacy content. If there are line breaks or lists within a <mixed-citation>, this can be coded using <break/> inside <mixed-citation>.

Use <uri> for web addresses in references.

For example:

<table border="1"><tr><td>[22]</td><td>ISO Management Systems4)</td></tr><tr><td>[23]</td><td>Reference web sites:http://www.iso.orghttp://www.tc176.orghttp://www.iso.org/tc176/sc2http://www.iso.org/tc176/ISO9001AuditingPracticesGroup</td></tr></table>

![](page=6,bbox=[238, 119, 602, 283])

is coded as:

```xml

<ref id="biblref_22">

    <label>[22]</label>

    <mixed-citation xlink:type="simple"><italic>ISO Management Systems</italic><xref

ref-type="fn" rid="fn_27"><sup>4)</sup></xref></mixed-citation>

</ref>

<ref id="biblref_23">

    <label>[23]</label>

    <mixed-citation xlink:type="simple">Reference web sites:<break/><uri

xlink:type="simple">http://www.iso.org</uri><break/><uri

xlink:type="simple">http://www.tc176.org</uri><break/><uri

xlink:type="simple">http://www.iso.org/tc176/sc2</uri><break/><uri

xlink:type="simple">http://www.iso.org/tc176/ISO9001AuditingPracticesGroup</uri></mixed-

citation>

</ref>

```

## B.3 IEC-specific legacy coding

## B.3.1 Footnotes

In legacy publications for both IEC and ISO, footnotes are coded as the last element inside the <back> element. For information on current instructions for footnotes see 10.1.4.

## B.3.2 Editing instructions (deletions, additions)

For instructions on how a given document amends another document (amendments, certain IEC series), <editing-instruction> is used. For the tagging of amendments, see also Annex D.

For example:

201. 1.2 Object

Replacement:

The object of this particular standard is to establish particular BASIC SAFETY requirements for HEARING AIDS and HEARING AID SYSTEMS as defined in 201.3.202 and 201.3.203.

## 201.1.3 * Collateral standards

![](page=6,bbox=[329, 2047, 475, 2104])

This particular standard refers to those applicable collateral standards that are listed in Clause 2 of the general standard and Clause 201.2 of this particular standard.

IEC 60601-1-3, IEC 60601-1-9 and IEC 60601-1-10 do not apply. All other published collateral standards in the IEC 60601-1 series apply as published.

## is coded as:

```html

<label>201.1.2</label>

<title>Object</title>

<editing-instruction>

<p id="p-66"><italic>Replacement:</italic></p></editing-instruction>

```

![](page=7,bbox=[236, 119, 602, 284])

<p id="p-67">The object of this particular standard is to establish particular <sc>basic safety</sc> requirements for <sc>hearing aids</sc> and <sc>hearing aid systems</sc> as defined in <xref ref-type="other" rid="con-201.3.202">201.3.202</xref> and <xref ref-type="other" rid="con-201.3.203">201.3.203</xref>.</p></sec>

<sec id="sec-201.1.3">

<label>201.1.3</label>

<title>* Collateral standards</title>

<editing-instruction>

<p id="p-68"><italic>Addition:</italic></p></editing-instruction>

<p id="p-69">This particular standard refers to those applicable collateral standards that are listed in Clause&#160;2 of the general standard and <xref ref-type="sec" rid="sec-201.2">Clause&#160;201.2</xref> of this particular standard.</p>

<p id="p-70"><std><std-id std-id-link-type="urn" std-id-type="undated">urn:iec:std:iec:60601-1-3::::</std-id><std-ref>IEC&#160;60601&#8209;1&#8209;3</std-ref></std>, <std><std-id std-id-link-type="urn" std-id-type="undated">urn:iec:std:iec:60601-1-9::::</std-id><std-ref>IEC&#160;60601&#8209;1&#8209;9</std-ref></std> and <std><std-id std-id-link-type="urn" std-id-type="undated">urn:iec:std:iec:60601-1-10::::</std-id><std-ref>IEC&#160;60601&#8209;1&#8209;10</std-ref></std> do not apply. All other published collateral standards in the <std><std-id std-id-link-type="urn" std-id-type="undated">urn:iec:std:iec:60601-1::ser::</std-id><std-ref>IEC&#160;60601&#8209;1 series</std-ref></std> apply as published.</p></sec>

## Older legacy tagging

Legacy content uses <editing-instruction> with @content-type; possible values are addition, replacement, deletion, modification. This attribute has been dropped in more recent conversion.

## B.3.3 Using <term-display> instead of TBX

<term-display> is used at IEC for the tagging of terminological entries whose elements are difficult or impossible to represent correctly in TBX, or for entries which are appearance-oriented. Elements are tagged in display sequence.

For example:

![](page=8,bbox=[239, 120, 601, 281])

<table border="1"><tr><td colspan="2">3 Definitions</td></tr><tr><td colspan="2">This clause of Part 1 is applicable, except as follows:</td></tr><tr><td colspan="2">3.2.9 Replacement:</td></tr><tr><td colspan="2">normal load
load obtained when the tool is operated continuously, the hose and vibrator bottle being attached to the tool as for normal use. During the operation the vibrator bottle is immersed centrally in a container filled with an amount of water corresponding to at least 50 times the volume of the vibrator bottle.
The dimensions of the container are such that the diameter is about 50% of the height of the water inside the container.
The height of the container is such that no water can splash out during the test.</td></tr><tr><td colspan="2">Addition:</td></tr><tr><td colspan="2">3.101
concrete vibrator
tool intended for compacting concrete. The active part (vibrator bottle) of the vibrator performs low-amplitude vibrations and is immersed into the mass of concrete to be vibrated.
Concrete vibrators may be of one of the following designs:
• the motor and the vibrating mechanism are inside the vibrator bottle to which the part containing the mains switch is connected by means of a long flexible hose containing the interconnecting cable;
• the motor and the vibrating mechanism are inside the vibrator bottle to which a handle, comprising the part containing the mains switch, is fixed by means of a short rigid tube, these parts forming a constructional unit;
• the vibrator mechanism is only inside the vibrator bottle to which a separate portable unit, comprising the motor and the part containing the mains switch, is connected by means of a long flexible hose containing a flexible shaft</td></tr></table>

is coded as:

![](page=9,bbox=[237, 119, 602, 283])

<sec id="sec-3" sec-type="terms">

<label>3</label>

<title>Terms and definitions</title>

<p id="p-57"><std><std-id std-id-link-type="urn" std-id-type="undated">urn:iec:std:iec:60745-1:::::#sec-3</std-id><std-ref>This clause of Part&#160;1</std-ref></std> is applicable, except as follows:</p>

<term-sec id="con-3.2.9">

<label>3.2.9</label>

<term-display>

<p><italic>Replacement:</italic></p>

<term id="ter-normal_load">normal load</term>

<def><p>load obtained when the tool is operated continuously, the hose and vibrator bottle being attached to the tool as for normal use. During the operation the vibrator bottle is immersed centrally in a container filled with an amount of water corresponding to at least 50 times the volume of the vibrator bottle.</p>

<p>The dimensions of the container are such that the diameter is about 50&#160;% of the height of the water inside the container.</p>

<p>The height of the container is such that no water can splash out during the test.</p>

</def>

</term-display>

</term-sec>

<term-sec id="con-3.101">

<label>3.101</label>

<p><italic>Addition:</italic></p>

<term-display>

<term id="ter-concrete_vibrator">concrete vibrator</term>

<def>

<p>tool intended for compacting concrete. The active part (vibrator bottle) of the vibrator performs low-amplitude vibrations and is immersed into the mass of concrete to be vibrated. Concrete vibrators may be of one of the following designs:

<list id="list-3-L1" list-type="alpha-lower">

<list-item id="lis-3-L1-1">

<label>a)</label>

<p id="p-58">the motor and the vibrating mechanism are inside the vibrator bottle to which the part containing the mains switch or a power converter and switch handle assembly is connected by means of a long flexible hose containing the interconnecting cable. The long flexible hose may be used as the handle (see <xref ref-type="fig" rid="fig-101">Figure&#160;101</xref>);</p></list-item>

<list-item id="lis-3-L1-2">

<label>b)</label>

<p id="p-59">only the vibrator mechanism is inside the vibrator bottle to which a separate portable unit, comprising the motor, the handle and the mains switch, is connected by means of a long flexible hose containing a flexible shaft (see <xref ref-type="fig" rid="fig-102">Figure&#160;102</xref>)</p></list-item></list></p>

</def>

</term-display>

</term-sec></sec>

## B.4 ISO-specific legacy coding

## B.4.1 General

This annex captures various types of encoding which were captured in legacy content. This kind of encoding is outdated and no longer used; it’s presented here for informative purposes.

## B.4.2 Copyright notes

The copyright note in the PDF footer should be coded as below. The grouping is based on the different lines used in the footer.

![](page=0,bbox=[239, 119, 602, 283])

$ \textcircled{c} $ ISO 2009 - All rights reserved

$ \textcircled{c} $ ANFIA, $ \textcircled{c} $ FIEV, $ \textcircled{c} $ SMMT, $ \textcircled{c} $ VDA, $ \textcircled{c} $ Chrysler, $ \textcircled{c} $ Ford Motor Company, $ \textcircled{c} $ General Motors Corp. - All rights reserved

$ \textcircled{c} $ PSA Peugeot Citroën, $ \textcircled{c} $ Renault - All rights reserved

## is coded as:

```xml

<permissions>

    <copyright-statement>All rights reserved</copyright-statement>

    <copyright-year>2009</copyright-year>

    <copyright-holder>ISO</copyright-holder>

</permissions>

<permissions>

    <copyright-statement>All rights reserved</copyright-statement>

    <copyright-holder>ANFIA</copyright-holder>

    <copyright-holder>FIEV</copyright-holder>

    <copyright-holder>SMMT</copyright-holder>

    <copyright-holder>VDA</copyright-holder>

    <copyright-holder>Chrysler</copyright-holder>

    <copyright-holder>Ford Motor Company</copyright-holder>

    <copyright-holder>General Motors Corp.</copyright-holder>

</permissions>

<permissions>

    <copyright-statement>All rights reserved</copyright-statement>

    <copyright-holder>PSA Peugeot Citroën</copyright-holder>

    <copyright-holder>Renault</copyright-holder>

</permissions>

```

For translated standards, there is no need to capture extra phrases such as "Official translation/Traducción oficial/Traduction officielle" before the organization copyright.

Traducción oficial/Official translation/Traduction officielle - © ISO 2009 - Todos los derechos reservados

© ANFIA, © FIEV, © SMMT, © VDA, © Chrysler, © Ford Motor Company, © General Motors Corp. - Todos los derechos reservados

© PSA Peugeot Citroën, © Renault - Todos los derechos reservados

## B.4.3 Annexes without clear "informative" or "normative" status

For some legacy content, when there is no indication of "informative" or "normative" in the line following the annex title, the bracketed text is coded as follows:

## Annex C

## Illustration of real value encoding

(This annex does not form an integral part of this Recommendation | International Standard)

## is coded as:

```html

<app id="sec_C">

    <label>Annex C</label>

    <title>Illustration of real value encoding<break/><styled-content style-

type="normal">(This annex does not form an integral part of this Recommendation |

International Standard)</styled-content></title>

</app>

```

![](page=1,bbox=[239, 119, 601, 282])

## B.4.4 Punctuation in normative references

In legacy content, the comma has been captured in the XML.

For example:

The following standards contain provisions which, through reference in this text, constitute provisions of this part of ISO 2631. At the time of publication, the editions indicated were valid. All standards are subject to revision, and parties to agreements based on this part of ISO 2631 are encouraged to investigate the possibility of applying the most recent editions of the standards indicated below. Members of IEC and ISO maintain registers of currently valid International Standards.

ISO 2041:1990, Vibration and shock — Vocabulary.

ISO 5805:1997, Mechanical vibration and shock — Human exposure — Vocabulary.

ISO 8041:1990, Human response to vibration — Measuring instrumentation.

IEC 1260:1995, Electroacoustics — Octave-band and fractional-octave-band filters.

is coded as:

```xml

<sec id="sec_2" sec-type="norm-refs">

    <label>2</label><title>Normative references</title>

    <p>The following standards contain provisions... International Standards.</p>

    <ref-list content-type="norm-refs">

        <ref><std><std-ref>ISO 2041:1990</std-ref>, <title>Vibration and shock -

Vocabulary.</title></std></ref>

        <ref><std><std-ref>ISO 5805:1997</std-ref>, <title>Mechanical vibration and shock -

Human exposure - Vocabulary.</title></std></ref>

        <ref><std><std-ref>ISO 8041:1990</std-ref>, <title>Human response to vibration -

Measuring instrumentation</title></std></ref>

        <ref><std><std-ref>ISO 1260:1995</std-ref>, <title>Electroacoustics - Octave-band and

fractional-octave-band filters</title></std></ref>

    </ref-list>

</sec>

```

## B.4.5 Content Language

The <content-language> element describes the main language used in the XML file

ISO Note: Content of the Element

For ISO standards documents, the content (in 2016) of this element should always be one of "en", "fr", "ru", "es", or "ar".

ISO Note: Related <language> Element in legacy documents

For older ISO-related standards only, the <language> element (that is part of the ISO-specific <doc-ident> element) provides the same language information as the <content-language> element, sometimes in a different form. For monolingual documents, <language> and <contentlanguage> will have the same content. However, in each ISO standards document, while the <content-language> element may repeat, there must be a single <language> element, so for documents written in more than one official language, the <language> element will contain a comma-separated (no whitespace) list of language codes for example: "en,fr,de".

![](page=2,bbox=[237, 119, 603, 282])

This <language> element and usage for multilingual documents has been replaced by a custom metadata item indicating the relevant languages.

## Example:

```html

<custom-meta>

<meta-name>multilang-ident</meta-name>

<meta-value>en/fr/de</meta-value>

</custom-meta>

```

![](page=3,bbox=[235, 119, 603, 284])

<div align="center">

# Annex C Metadata usage

</div>

## C.1 ISO metadata

In ISO legacy tagging, <iso-meta> contains ISO-specific metadata about the document.

```xml

<std-meta>

<title-wrap xml:lang="en">

<intro>Glass in building</intro>

<main>Forced-entry security glazing</main>

<compl>Test and classification by repetitive ball drop</compl>

<full>Glass in building — Forced-entry security glazing — Part 1: Test and classification by repetitive ball drop</full>

</title-wrap>

<title-wrap xml:lang="fr">

<intro>Verre dans la construction</intro>

<main>Vitrages de sécurité contre infractions</main>

<compl>Essai et classification par balle lancée répétée</compl>

<full>Verre dans la construction — Vitrages de sécurité contre infractions — Partie 1: Essai et classification par balle lancée répétée</full>

</title-wrap>

<proj-id>75209</proj-id>

<release-version>DIS</release-version>

<std-ident>

<originator>ISO</originator>

<doc-type>IS</doc-type>

<doc-number>16936</doc-number>

<part-number>1</part-number>

<edition>2</edition>

<version>1</version>

</std-ident>

<std-org std-org-type="sdo">

<std-org-abbrev>ISO</std-org-abbrev>

</std-org>

<content-language>en</content-language>

<std-ref type="dated">ISO/DIS 16936-1</std-ref>

<std-ref type="undated">ISO/DIS 16936-1</std-ref>

<doc-ref>ISO/DIS 16936-1(en)</doc-ref>

<comm-ref>ISO/TC 160/SC 2</comm-ref>

<secretariat>ANSI</secretariat>

<ics>81.040.20</ics>

<page-count count="8"/>

<std-xref type="revises">

<std-ref>ISO 16936-1:2005</std-ref>

</std-xref>

<permissions>

<copyright-statement>All rights reserved</copyright-statement>

<copyright-year>2020</copyright-year>

<copyright-holder>ISO</copyright-holder>

</permissions>

<self-uri>iso:std:iso:16936:-1:dis:ed-2:v1:en</self-uri>

<custom-meta-group>

<custom-meta>

<meta-name>price-ref-pages</meta-name>

<meta-value>8</meta-value>

</custom-meta>

<custom-meta>

<meta-name>generation-date</meta-name>

<meta-value>2020-01-31</meta-value>

</custom-meta>

</custom-meta-group>

</std-meta>

```

![](page=4,bbox=[237, 119, 602, 282])

## C.2 IEC metadata

```xml

<front>

  <std-meta>

    <title-wrap xml:lang="en">

      <full>Letter symbols to be used in electrical technology - Part 2: Telecommunications and

        electronics</full>

    </title-wrap>

    <permissions>

      <copyright-statement>

        <inline-graphic/>THIS PUBLICATION IS COPYRIGHT PROTECTED<br/>Copyright &#169; 2019 IEC,

        Geneva, Switzerland</copyright-statement>

      <copyright-year>2019</copyright-year>

      <copyright-holder>IEC</copyright-holder>

      <license>

        <license-p>All rights reserved. Unless otherwise specified, no part of this publication

          may be reproduced or utilized in any form or by any means, electronic or mechanical,

          including photocopying and microfilm, without permission in writing from either IEC or

          IEC&#8217;s member National Committee in the country of the requester. If you have any

          questions about IEC copyright or have an enquiry about obtaining additional rights to

          this publication, please contact the address below or your local IEC member National

          Committee for further information.</license-p>

        <license-p>

          <address>IEC Central Office, 3, rue de Varemb&#233;, CH-1211 Geneva 20, Switzerland,

            Tel.: +41 22 919 02 11, info@iec.ch, www.iec.ch</address>

        </license-p>

        <license_ref>http://xyz: reference to licensing conditions, e.g. code

          components</license_ref>

      </license>

    </permissions>

    <proj-id>iec:proj:19106</proj-id>

    <release-version>IS</release-version>

    <std-ident>

      <originator>IEC</originator>

      <doc-type>IS</doc-type>

      <doc-number>60027</doc-number>

      <part-number>2</part-number>

      <edition>4</edition>

      <std-id-group>

        <std-id originator="IEC" std-id-link-type="id" std-id-type="dated">iec:pub:30633</std-id>

        <std-id originator="IEC" std-id-link-type="ooi" std-id-type="dated">30633</std-id>

        <std-id originator="IEC" std-id-link-type="urn" std-id-type="dated"

          >urn:iec:std:iec:60027-2:2019-01::::</std-id>

      </std-id-group>

      <isbn>9782832263464</isbn>

      <suppl-type/>

      <suppl-number/>

    </std-ident>

    <std-org>

      <std-org-abbrev>IEC</std-org-abbrev>

    </std-org>

    <content-language>en</content-language>

    <std-ref type="dated">IEC 60027-2:2019</std-ref>

    <release-date date-type="published">2019-01-08</release-date>

    <meta-date type="stability-date">2021-12-31</meta-date>

    <comm-ref id="id_1215">TC 25</comm-ref>

    <ics>01.060</ics>

    <ics>33.020</ics>

    <counts>

      <page-count count="149"/>

    </counts>

    <self-uri xlink:type="simple" xmlns:xlink="http://www.w3.org/1999/xlink"

      >https://api.iec.ch/harmonized/publications/download/300160</self-uri>

    <abstract xml:lang="en">

      <p>IEC 60027-2:2019 is applicable to telecommunications and electronics. It gives names and

        symbols for quantities and their units.</p>

    </abstract>

    <custom-meta-group>

```

![](page=5,bbox=[234, 118, 603, 284])

```xml

    <custom-meta>

      <meta-name>price code</meta-name>

      <meta-value>iec:L</meta-value>

    </custom-meta>

  </custom-meta-group>

</std-meta>

<sec id="sec-foreword" sec-type="foreword">

```

## C.3 National metadata usage

The NISO metadata model allows for multiple instances of <std-meta>. This can be used for National metadata.

![](page=6,bbox=[235, 118, 602, 284])

<div align="center">

# Annex D Amendments

</div>

## D.1 IEC amendments

IEC amendments are generally coded as a regular IEC standard would, with semantic tagging wherever possible. Where it isn't possible, due to the constraints of amendment-specific editing, a layout-based option will be used.

## D.1.1 Editing instructions

Instructions such as "Insert the following text" or "Delete ..." are coded inside <editing- instruction>.

## Example:

## 3 Terms and definitions

Add, after the existing definition 3.22 in CISPR 11:2015/AMD1:2016, the following new term and definition:

3. 23

power conversion equipment

electrical device converting one form of electrical power to another form of electrical power with respect to voltage, current, frequency, phase and the number of phases

[SOURCE: IEC 62920:2017 3.3]

## 6.2.1.1 General

Replace the last paragraph by the following new paragraph:

The limits for the LV d.c. power ports specified hereafter apply only to the following types of equipment:

## is coded as:

```html

<title>Terms and definitions</title>

<editing-instruction>

<p id="p-34"><italic>Add, after the existing <std><std-id std-id-link-type="urn" std-id-

type="dated">urn:iec:std:cispr:11:2015-06::::||amd:1:2016-06#con-3.22</std-id><std-ref>definition

3.22&#160;in CISPR&#160;11:2015/AMD1:2016</std-ref></std>, the following new term and

definition:</italic></p></editing-instruction>

<term-sec id="con-3.23">

<label>3.23</label>

<tbx:termEntry id="te-3.23">

<tbx:langSet xml:lang="en">

<tbx:definition>electrical device converting one form of electrical power to another form of

electrical power with respect to voltage, current, frequency, phase and the number of

phases</tbx:definition>

<tbx:source><std><std-id std-id-link-type="urn" std-id-type="dated">urn:iec:std:iec:62920:2017-

07::::#con-3.3</std-id><std-ref>IEC&#160;62920:2017&#160;3.3</std-ref></std></tbx:source>

<tbx:tig>

<tbx:term id="ter-power_conversion_equipment">power conversion equipment</tbx:term>

<tbx:partOfSpeech value="noun"/>

<tbx:normativeAuthorization value="preferredTerm"/>

<tbx:termType value="fullForm"/></tbx:tig></tbx:langSet></tbx:termEntry></term-sec>

```

![](page=7,bbox=[236, 119, 603, 283])

```html

<sec id="sec-6.2.1.1">

<label>6.2.1.1</label>

<title>General</title>

<editing-instruction content-type="replacement">

<p id="p-35"><italic>Replace the last paragraph by the following new

paragraph:</italic></p></editing-instruction>

<p id="p-36">The limits for the LV d.c. power ports specified hereafter apply only to the following

types of equipment:</p>

```

![](page=8,bbox=[239, 118, 601, 282])

## D.2 ISO amendments

ISO produces amendment texts separate from the original document.

Sections in amendments without an identifiable label and title should provide at least an empty <label/> or <title/>.

For example:

```html

<sec id="sec_0">

<label/>

<p><bold>6. Personal health device DIM</bold></p>

<p><bold>6.3 Personal health object class definitions</bold></p>

...

```

The XML captures the text of the amendment without semantic instruction for deletion or addition, and without direct reference to the original document.

For example:

3.1, 3.2

Change all references to "datatype (3.1.8)" to "datatype (3.1.9)".

3.1.13

Change the reference in the source from "7.3.37" to "7.3.38".

3.2.9

Replace the definition with:

attribute (3.1.4) of a metadata item (3.2.75) commonly needed in its specification

3.2.50

Replace the definition with:

metadata item (3.2.75) which can have designations (3.2.51) and/or definitions (3.2.40)

is coded as:

![](page=9,bbox=[238, 119, 602, 283])

```html

<body>

<sec id="section_1"><label/>

<p> </p>

<p><italic>3.1, 3.2</italic></p>

<p>Change all references to "<italic>datatype</italic> (3.1.8)" to

"<italic>datatype</italic> (3.1.9)".</p>

<p> </p>

<p><italic>3.1.13</italic></p>

<p>Change the reference in the source from "7.3.37" to "7.3.38".</p>

<p> </p>

<p><italic>3.2.9</italic></p>

<p>Replace the definition with:</p>

<p><italic>attribute</italic> (3.1.4) of a <italic>metadata item</italic> (3.2.75)

commonly needed in its specification</p>

<p> </p>

<p><italic>3.2.50</italic></p>

<p>Replace the definition with:</p>

<p><italic>metadata item</italic> (3.2.75) which can have <italic>designations</italic>

(3.2.51) and/or <italic>definitions</italic> (3.2.40)</p>

<p> </p>

```

Terms and definitions in amendments are captured in TBX.

For example:

3.2

Add the following new terms and definitions:

3.2.143

conceptual domain definition

formal definition of a defined conceptual domain (3.2.144)

Note 1 to entry: The definition may reference externally enumerated value meanings.

3.2.144

defined conceptual domain

conceptual domain (3.2.21) that is specified by a formal definition

Note 1 to entry: The definition may reference externally enumerated value meanings.

3.2.145

defined value domain

value domain (3.2.140) that is specified by reference to an external specification

Note 1 to entry: The external specification should enumerate the permissible values.

is coded as:

![](page=10,bbox=[237, 119, 603, 283])

<p><italic>3.2</italic></p>

<p>Add the following new terms and definitions:</p>

</sec>

<sec id="sec_terms" sec-type="terms"><label/>

<term-sec id="sec_3.2.143"><label>3.2.143</label>

<txb:termEntry id="term_3.2.143">

<txb:langSet xml:lang="en">

<txb:definition>formal definition of a <txb:entailedTerm target="term_3.2.144">defined conceptual domain (3.2.144)</txb:entailedTerm></txb:definition>

<txb:note>The definition may reference externally enumerated value meanings.</txb:note>

<txb:tig id="term_3.2.143-1">

<txb:term>conceptual domain definition</txb:term>

<txb:partOfSpeech value="noun"/>

</txb:tig></txb:langSet>

</txb:termEntry>

</term-sec>

<term-sec id="sec_3.2.144"><label>3.2.144</label>

<txb:termEntry id="term_3.2.144">

<txb:langSet xml:lang="en">

<txb:definition>conceptual domain (3.2.21) that is specified by a formal definition</txb:definition>

<txb:note>The definition may reference externally enumerated value meanings.</txb:note>

<txb:tig id="term_3.2.144-1">

<txb:term>defined conceptual domain</txb:term>

<txb:partOfSpeech value="noun"/>

</txb:tig></txb:langSet>

</txb:termEntry>

</term-sec>

<term-sec id="sec_3.2.145"><label>3.2.145</label>

<txb:termEntry id="term_3.2.145">

<txb:langSet xml:lang="en">

<txb:definition>value domain (3.2.140) that is specified by reference to an external specification</txb:definition>

<txb:note>The external specification should enumerate the permissible values.</txb:note>

<txb:tig id="term_3.2.145-1">

<txb:term>defined value domain</txb:term>

<txb:partOfSpeech value="noun"/>

</txb:tig></txb:langSet>

</txb:termEntry>

</term-sec>

</sec>

![](page=11,bbox=[237, 118, 602, 283])

## Annex E

## E.1 IEC Corrigenda

When a corrigendum is published, its contents are integrated into the base publication associated with it. The XML of the base file will be updated with these changes by IEC and delivered in the usual ways.

## E.2 IEC Interpretation Sheets (ISH)

Interpretation sheets provide complementary contents to a base document. When an ISH is published, a link to the PDF of the ISH is integrated into the base publication associated with it. The PDF of the ISH is included in the assets, and an @xlink:href to it is integrated in an element <supplementary-material> inside the paragraph in the foreword that mentions that an ISH has been included.

For example, this text in the base document

The committee has decided that the contents of this document will remain unchanged until the stability date indicated on the IEC website under "http://webstore.iec.ch" in the data related to the specific document. At this date, the document will be

- reconfirmed,

- withdrawn,

- replaced by a revised edition, or

- amended.

The contents of the interpretation sheet of March 2020 have been included in this copy.

## is coded as

<p id="p-19"><supplementary-material xlink:href="asset/iec60079-11-12.pdf">The contents of the interpretation sheet of March 2020 have been included in this copy.</supplementary-material></p>

The assets folder contains the PDF of the ISH:

![](page=11,bbox=[238, 1848, 1510, 2194])

## E.3 IEC Software supplements

IEC standards are sometimes published with so-called Software supplements, a separate download or CD with one or more additional files accompanying the publication, which are intended to support the users in applying the standard, e.g. Excel worksheets to calculate values, computer code in various formats etc.

![](page=12,bbox=[239, 119, 601, 282])

Software supplements are indicated in the foreword of the standard, through a sentence similar to this:

The list of all currently available parts of the ISO/IEC 14543 series, under the general title Information technology - Home electronic system (HES) architecture, can be found on the IEC website and ISO website.

This publication contains attached files in the form of xml. These files are intended to be used as a complement and do not form an integral part of the publication.

The text of this standard is based on the following documents:

In XML, the additional files in a Software supplement are contained in the asset folder. In the <p> containing the sentence, a link to these files will be created via @xlink:href, inside an element <supplementary-material>.

Here's the XML tagging of the above example:

<p id="p-12"><supplementary-material xlink:href="asset/software-supplement.xml"> This publication contains attached files in the form of xml. These files are intended to be used as a complement and do not form an integral part of the publication.</supplementary-material></p>

![](page=13,bbox=[237, 119, 602, 283])

## Annex F

## ID schemes as used in the traditional publication chain

The following semantic ID schemes are present in legacy content and are still produced with the traditional publication chain in both organisations. They are used to generate cross-references during conversion. However, IDs generated in OSD are arbitrary. It is therefore not recommended to base any exploitation of ISO or IEC XML on semantic IDs.

## F.1 IEC ID scheme

<table border="1"><tr><td rowspan="2">Element</td><td colspan="3">With Label/Title</td><td colspan="3">Without Label/Title</td></tr><tr><td>Label/Title/Content</td><td>Example</td><td>Comments</td><td>Title/Title</td><td>Example</td><td>Comments</td></tr><tr><td rowspan="4">Section</td><td>1.</td><td>sec-1</td><td></td><td>Foreword</td><td>sec-foreword</td><td></td></tr><tr><td>1.2.1.</td><td>sec-1.2.1</td><td></td><td>Introduction</td><td>sec-introduction</td><td></td></tr><tr><td></td><td></td><td></td><td>Bibliography</td><td>sec-bibliography</td><td></td></tr><tr><td></td><td></td><td></td><td>Index</td><td>sec-index</td><td></td></tr><tr><td rowspan="4">Annex</td><td>B.1.</td><td>sec-B.1</td><td></td><td></td><td></td><td></td></tr><tr><td>B.1.2.</td><td>sec-B.1.2</td><td></td><td></td><td></td><td></td></tr><tr><td>Annex A</td><td>anx-A</td><td></td><td></td><td></td><td></td></tr><tr><td>Annex B</td><td>anx-B</td><td></td><td></td><td></td><td></td></tr><tr><td>Bibliography</td><td>1.</td><td>bib-1</td><td></td><td>no text</td><td>bib-5</td><td>5th reference of bibliography</td></tr><tr><td>Concept</td><td>3.2.1</td><td>con-3.2.1</td><td></td><td></td><td></td><td></td></tr><tr><td>Term entry</td><td></td><td>te-3.2.1</td><td></td><td></td><td></td><td></td></tr><tr><td>Terms</td><td>broadcast</td><td>ter-broadcast</td><td></td><td></td><td></td><td></td></tr><tr><td>Note to entry</td><td>Note</td><td>nte-3.4-1</td><td>1st note of terms in section 3.4</td><td></td><td></td><td></td></tr><tr><td rowspan="2">Table</td><td>Table 1</td><td>tab-1</td><td></td><td>no title</td><td>tab-informal-5.3-1</td><td>1st informal table of section 5.3</td></tr><tr><td></td><td></td><td></td><td>no title</td><td>tab-informal-5.3-2</td><td>2nd informal table of section 5.3</td></tr><tr><td>Figure</td><td>Figure 1</td><td>fig-1</td><td></td><td></td><td></td><td></td></tr><tr><td>Formula</td><td>(1)</td><td>for-1</td><td></td><td>no text</td><td>for-informal-5.6-1</td><td>1st formula without label in the section 5.6</td></tr><tr><td>Math element</td><td></td><td></td><td></td><td>no own label (the parent formula may have one)</td><td>mml-1</td><td>sequentially numbered throughout the document, link to the corresponding .png graphics file can be based on this ID</td></tr><tr><td>Footnote</td><td>1</td><td>foo-1</td><td></td><td></td><td></td><td></td></tr></table>

![](page=14,bbox=[238, 120, 602, 283])

<table border="1"><tr><td rowspan="5">Element</td><td colspan="3">With Label/Title</td><td colspan="3">Without Label/Title</td></tr><tr><td>Label/Title/Content</td><td>Example</td><td>Comments</td><td>Title/Title</td><td>Example</td><td>Comments</td></tr><tr><td>2</td><td>foo-2</td><td></td><td></td><td></td><td></td></tr><tr><td>$\cdot$</td><td>fos-1</td><td>1st footnote with a symbol in the document</td><td></td><td></td><td></td></tr><tr><td>$\ddagger$</td><td>fos-2</td><td>2nd footnote with a symbol in the document</td><td></td><td></td><td></td></tr><tr><td rowspan="2">Table footnote</td><td>1</td><td>tfn-1-1</td><td>1st footnote of Table 1</td><td>$\cdot$</td><td>tfn-3-1</td><td>1st table-footnote of Table 3</td></tr><tr><td>2</td><td>tfn-1-2</td><td>2nd footnote of Table 1</td><td>$\ddagger$</td><td>tfs-4-1</td><td>1st symbol table-footnote of Table 4</td></tr><tr><td rowspan="2">Figure note</td><td>Note</td><td>fno-4-1</td><td>1st note of Figure 4</td><td></td><td></td><td></td></tr><tr><td>Note 1</td><td>fno-5-2</td><td>2nd note of Figure 5</td><td></td><td></td><td></td></tr><tr><td>Figure group note</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="2">Table note</td><td>Note</td><td>tno-4-1</td><td>1st note of Table 4</td><td></td><td></td><td></td></tr><tr><td>Note 1</td><td>tno-5-2</td><td>2nd note of Table 5</td><td></td><td></td><td></td></tr><tr><td rowspan="2">List item</td><td>2</td><td>lis-5.6-L1-2</td><td>2nd list item of 1st list of section 5.6</td><td></td><td></td><td></td></tr><tr><td>3</td><td>lis-5.6-L1-L2-3</td><td>3rd list-item of 2nd list item of 1st list of section 5.6</td><td></td><td></td><td></td></tr><tr><td>Note</td><td>1</td><td>not-3.5-1</td><td>1st note of section 3.5</td><td></td><td></td><td></td></tr><tr><td>Example</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Paragraph</td><td></td><td></td><td></td><td></td><td>p-450</td><td>450th paragraph of the document</td></tr></table>

## F.2 ISO ID scheme

<table border="1"><tr><td rowspan="2">Element</td><td colspan="3">With Label/Title</td><td colspan="3">Without Label/Title</td></tr><tr><td>Label/Title/Content</td><td>Example</td><td>Comments</td><td>Title/Title</td><td>Example</td><td>Comments</td></tr><tr><td rowspan="4">Section</td><td>1.</td><td>sec_1</td><td></td><td>Foreword</td><td>sec_foreword</td><td></td></tr><tr><td>1.2.1.</td><td>sec_1.2.1</td><td></td><td>Introduction</td><td>sec_intro</td><td></td></tr><tr><td></td><td></td><td></td><td>Bibliography</td><td>sec_bibl</td><td></td></tr><tr><td></td><td></td><td></td><td>Index</td><td>sec_index</td><td></td></tr><tr><td rowspan="2">Annex</td><td>B.1.</td><td>sec_B.1</td><td></td><td>-</td><td>-</td><td></td></tr><tr><td>B.1.2.</td><td>sec_B.1.2</td><td></td><td>-</td><td>-</td><td></td></tr></table>

![](page=15,bbox=[237, 119, 602, 282])

<table border="1"><tr><td rowspan="4">Element</td><td colspan="3">With Label/Title</td><td colspan="3">Without Label/Title</td></tr><tr><td>Label/Title/Content</td><td>Example</td><td>Comments</td><td>Title/Title</td><td>Example</td><td>Comments</td></tr><tr><td>Annex A</td><td>sec_A</td><td></td><td>-</td><td>-</td><td></td></tr><tr><td>Annex B</td><td>sec_B</td><td></td><td>-</td><td>-</td><td></td></tr><tr><td>Bibliography</td><td>1.</td><td>ref_1</td><td></td><td>no text</td><td>ref_5</td><td>5th reference of bibliography</td></tr><tr><td>Terms</td><td>3 Terms and Definitions</td><td>sec_3</td><td></td><td>-</td><td>-</td><td></td></tr><tr><td>Note to entry</td><td>Note</td><td>&lt;tbx:note&gt;</td><td></td><td>-</td><td>-</td><td></td></tr><tr><td>Table</td><td>Table 1</td><td>tab_1</td><td></td><td>no title</td><td>tab_r</td><td>can use any letter not associated with an annex number</td></tr><tr><td>Figure</td><td>Figure 1</td><td>fig_1</td><td></td><td></td><td></td><td></td></tr><tr><td>Formula</td><td>(1)</td><td>formula_1</td><td></td><td>no text</td><td>no id on inline formulae</td><td></td></tr><tr><td rowspan="2">Footnote</td><td>1</td><td>fn_1</td><td></td><td>no text</td><td>fn_1</td><td></td></tr><tr><td>$\cdot$</td><td>fn_2</td><td>Symbols are placed in labels; id numbering continues sequentially</td><td>-</td><td>-</td><td></td></tr><tr><td rowspan="2">Table footnote</td><td>1</td><td>table-fn_1.1</td><td>1st note of Table 1</td><td>no text</td><td>table-fn_1.1</td><td></td></tr><tr><td>a</td><td>table-fn_2.1</td><td>1st note of Table 2</td><td>-</td><td>-</td><td></td></tr><tr><td rowspan="2">Figure note</td><td>Note</td><td>-</td><td>No id attribute in &lt;non-normative-note&gt;</td><td>-</td><td>-</td><td></td></tr><tr><td>Note 2</td><td>-</td><td>No id attribute in &lt;non-normative-note&gt;</td><td>-</td><td>-</td><td></td></tr><tr><td>Figure group note</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td></td></tr><tr><td>Table note</td><td>Note</td><td>-</td><td>No id attribute in &lt;non-normative-note&gt;</td><td>-</td><td>-</td><td></td></tr><tr><td>List item</td><td>a), 1, A</td><td>-</td><td>No id attribute in any &lt;list&gt; or &lt;list-item&gt;</td><td>-</td><td>-</td><td></td></tr><tr><td>Note</td><td>-</td><td>-</td><td>No id attribute used on general notes</td><td>-</td><td>-</td><td></td></tr><tr><td>Example</td><td>-</td><td>-</td><td>No id attribute used for examples</td><td>-</td><td>-</td><td></td></tr><tr><td>Paragraph</td><td>-</td><td>-</td><td>No ids or other attributes used for &lt;p&gt;</td><td>-</td><td>-</td><td></td></tr></table>