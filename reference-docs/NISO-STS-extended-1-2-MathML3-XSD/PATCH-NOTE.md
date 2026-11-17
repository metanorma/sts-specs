# NISO STS extended-1.2 MathML3 XSD (official distribution, patched)

Downloaded from https://www.niso-sts.org/downloadables/XSDs/v1-2/NISO-STS-extended-1-2-MathML3-XSD.zip

NISO's zip does not compile out of the box:

1. `standard-modules/xml.xsd` is missing from the zip (the 1.0-era package
   shipped it). Copied from `../NISO-STS-extended-1-MathML3-XSD/standard-modules/xml.xsd`.
2. The root driver `NISO-STS-extended-1-mathml3.xsd` comments out the
   `xml:` namespace import, so `xml:base`/`xml:lang` refs fail to resolve.
   The import is restored (same wiring as the 1.0-era driver).

With those two fixes the schema compiles and accepts `<processing-meta>`
as the optional first child of `<standard>` (STS 1.2 content model:
`processing-meta?, front, body, back*`), which the IEC/ISO Coding
Guidelines ed 2.1 §4.3.2 prescribe.
