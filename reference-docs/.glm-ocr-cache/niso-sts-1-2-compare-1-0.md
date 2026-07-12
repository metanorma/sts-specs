October 2022

## TABLE OF CONTENTS

1 INTRODUCTION ...1

2 BACKWARDS COMPATIBLE ...1

3 NEW METADATA ABOUT THE XML FILE (NOT THE STANDARD)...1

4 ELEMENTS ADDED ...2

5 ELEMENT MODIFICATIONS...2

6 ATTRIBUTES ADDED TO STS...3

7 ATTRIBUTE MODIFICATIONS ...3

8 TBX/<TERM-DISPLAY> ...5

8.1 MODIFICATION TO NISO STS TBX PROFILE ...5

8.2 MODIFICATION TO <TERM-DISPLAY> ...5

## 1 Introduction

The NISO Standards Tag Suite (NISO STS) describes an XML model for normative standards documents produced by standards organizations (international, national, standards development organizations, consortia, and others). The intent of NISO STS is to provide a common format in which standards bodies, standards producing organizations, publishers, commercial vendors, and archives can publish and exchange standards documents.

The ANSI/NISO Z39.102-2022 Standards Tag Suite (NISO STS) V1.2 was approved on October 21, 2022.

This document describes the changes between ANSI/NISO Z39.102-2017 Standards Tag Suite (NISO STS) V1.0 and this version. (Note: There was no V1.1; V1.2 is the next version after V1.0) This document does not discuss Tag Library (user documentation) changes, only changes to the models.

## 2 Backwards Compatible

NISO STS 1.2 is fully backward compatible with NISO STS 1.0. That is, all documents that are valid to NISO STS 1.0 are also valid to NISO STS 1.2.

## 3 New Metadata About the XML File (not the standard)

Added <processing-meta> as a peer to <front>, <body>, and <back>.

- Processing metadata is not considered to be part of the content of a standard, nor metadata for citing the standard; it is metadata about how the XML has been constructed not about how the standard is structured. This metadata is information at the "file level" and thus not part of <std-doc-meta>.

- The elements inside <processing-meta> name tag set extensions (supersets, <extended-by>) and tag set restrictions (subset, secondary schema, etc., <restricted-by>) that the XML document claims to follow. <custom-meta> allows any additional name/value paired metadata.

- The attributes on <processing-meta> describe the modeling choices made by this document in terms of tagset family, base tag set, table model, and MathML:

<div align="center">

Processing metadata attributes:

</div>

<table border="1"><tr><td>@tagset-family</td><td>Which of the JATS tagset families is the basis for this document's tagset? (e.g., “jats”, “bits”, or “sts”)</td></tr><tr><td>@base-tagset</td><td>Which of the STS standard tag sets is the basis for this document (e.g., “interchange” or “extended”)</td></tr><tr><td>@table-model</td><td>Which table model is used for this document? (e.g., “xhtml” or “oasis” or both)</td></tr></table>

<table border="1"><tr><td>@mathml</td><td>Which version of MathML is used by this document? (e.g., MathML 2.0 or MathML 3.0)</td></tr><tr><td>@math-representation</td><td>How many ways are mathematical expressions represented in this document? (e.g.,‘TeX and images’or‘MathML and plaintext’)</td></tr><tr><td>@terminology-model</td><td>Which version of terminology description is used for this document? (e.g.,TBX or＜term-display＞)</td></tr></table>

## 4 Elements Added

- Defined the current <code> element as a block structure and added <inline-code> element.

- Added <inline-media> element.

- Added <legend> element to hold legends (aka keys, where-lists, variable-lists, symbol-lists, etc.) for:

- <boxed-text>, <chem-struct-wrap>, <disp-formula>, <disp-formula-group>,

- <fig>, <fig-group>, <graphic>, <media>, <supplementary-material>,

- <table-wrap>, and <table-wrap-group>

- Added <sub>sub-part-number</sub> element (optional, repeatable) to <std-ident> to hold section or other sub-part numbers.

## 5 Element Modifications

- Added <award-name> and <award-desc> to <award-group>

- Added <caption> as a child of <disp-formula>.

- <chapter-title> element will be the same in JATS and STS, which added elements to <chapter-title>. However, <chapter-title> has now been deprecated, in favor of <part-title>, and will be removed at the next backwards-incompatible release

- Added <data-title> to <std>

- Allowed <editing-instruction> between sections (directly inside front, body, back) and anywhere in the order of elements, repeatedly.

- Added <inline-graphic> and <private-char> to <data-title> . (JATS and STS will use the same model for <data-title>.)

- Allowed the element <disp-formula> in <table-wrap>.

- Added Accessibility elements <alt-text> and <long-desc> to <inline-formula>.

- Add at least the following elements to <source>, which should have the same model as in JATS:

- `<abbrev>`, `<alternatives>`, `<inline-graphic>`, `<private-char>`

- <chem-struct>, <inline-formula>, <mml:math>, <tex-math>

- <named-content>, <styled-content>, <fn>, <target>, <xref>

- Allowed <string-name> anywhere <name> could be displayed to the end user, adding <string-name> to the following elements, thus loosening name restrictions within those elements:

- <contrib>, <person-group>, <name-alternatives>

- <related-article> and <related-object>

- <mixed-citation> and <element-citation>

- Both subjects and keywords should be allowed in the same locations in the vocabulary. Therefore <subj-group> and <kwd-group> added to:

- <app>, <boxed-text>, <sec>, <app-group>, <chem-struct-wrap>,

- <disp-formula>, <disp-formula-group>,

- <fig>, <fig-group>, <graphic>, <media>, <statement>, <supplementary-material>,

- <table-wrap>, <table-wrap-group>

- Added the following elements to XHTML table cells ( <td> ) and to OASIS CALS table cells (<oasis:entry>):

- <disp-quote>

- <speech>

- <statement>

which added them to <table>, <oasis:table>, and <array>

## 6 Attributes Added to STS

- Created @stage-code added to <release-version>. The definition and illustrative code values come from the ISO document International Harmonized Stage Codes. Documentation will note that some SDOs use other coding systems.

## 7 Attribute Modifications

- Added attribute @assigning-authority to more elements:

- <article-id>

- <award-id>

- <compound-kwd>

- <compound-subject>

- <contrib-id>

- <institution-id>

- <issue-id>

- <journal-id>

- <kwd>

- <kwd-group>

- <nested-kwd>

- <object-id>

- <resource-id>

- <subject>

- <subj-group>

- <volume-id>

- Added attributes to <award-id>:

- @award-id-type

- @award-type

- all the XLink linking attributes: (@xmlns:xlink, @xlink:type, @xlink:href, @xlink:role, @xlink:title, @xlink:show, and @xlink:actuate).

- Added the @custom-type/custom-value solution to the following static list:

- @form-type

- @person-group-type

- @pub-id-type

- @related-term-type

- @ref-type

- std/@type (dated, undated, and multipart)

- std-ref/@type

- Made @dtd-version optional and provided a value list, one value for each published version of NISO STS, with the intention that new values will be added over time as new versions are voted.

- The initial values for the list will include the ISO STS values ("iso-0.9", "iso-1.0", "iso-1.1")

- The initial values for the list will include the NISO STS values, without prefix since NISO STS is our main focus, and NISO STS is expected to be the default situation. The list of NISO STS version numbers (currently "1.0" and "1.1d1") will grow over time.

- Added @degree-contribution to the <role>

- Added the @hreflang attribute to any element that can take the attribute @xlink:href. This includes adding the @hreflang attribute to <related-article> and <related-object>.

- Added the value 'arabic' to the suggested @list-type values.

- Added the attribute @originator to the following elements:

- <meta-date>

- <release-date>

- <release-version-id>

- <secretariat>

- <self-uri>

- <wi-number>

- Made @std-id-type optional on <std-id>

- Added explicit tagging for additional list types by adding second-level styling information for a bulleted list should be named using the @style-detail attribute

<list list-type="bullet" style-detail="dash">

- Added @specific-use to <release-version>

- Added @style-detail to <styled-content>.

- Added @use-type and the linking attributes to <std>

- Added @use-type to both <mixed-citation> and <element-citation>.

- Added @vocab and @vocab-identifier to:

- <kwd>, <compound-kwd>, <nested-kwd>,

- <subject>, <compound-subject>,

- <inline-media>, <institution-id>

- Added @vocab-term and @vocab-term-identifier to <inline-media>.

- Added new xref/@ref-type value "abbreviation".

## 8 TBX/<term-display>

NISO STS provides two very different structures for tagging the terms and definitions inside a Term Section (<term-sec>). One way is to tag terms using a TBX profile (a namespaced vocabulary based on ISO 30042; TermBase eXchange). The second way is to use <term-display>, a simpler but less powerful alternative which provides a looser description of a term and its definition than TBX tagging allows, using natural language to describe terms. No major changes were made to either system, but there were a few minor enhancements.

## 8.1 Modification to NISO STS TBX Profile

- <tbx:geographicalUsage> changed from optional to optional-repeatable inside <tbx:tig>.

- Added an @absent {yes | no} attribute to <tbx:term> to mark cases where the <tbx:term> element, which is required, has been left empty deliberately.

- The element <tbx:grammaticalGender> is an empty element whose attribute @value is chosen from a list of named values. STS added the combined value "masculine-feminine" to this list.

## 8.2 Modification to <term-display>

- Added new element <term-display-string>. The <term-display-string> is allowed inside <term-display> as a sibling to <term> and defined as a container element for narrative material to appear inside <term-display> but outside, or between, the element content of <term-display>.

- Added new @term-type value "translation"