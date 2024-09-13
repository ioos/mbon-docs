---
title: "MBON use case"
keywords: data
tags: [biology, data, example]
toc: true
summary: This is a collection of IOOS Marine Biodiversity Observation Network (MBON) data flow use cases.
mermaid: true
---
## Gulf of Maine Wilkinson Basin Time Series Station Calanus Abundance Observations

### Background
Gulf of Maine Wilkinson Basin Time Series Station (WBTS) Calanus Abundance Observations data collection was supported by multiple awards to NERACOOS, the University of New Hampshire and the University of Maine from various funding agencies, including NSF, NOAA and BOEM.

Projects: NERACOOS ISMN (Integrated Sentinel Monitoring Network)- MBON (Marine Biodiversity Observation Network) Gulf of Maine Plankton Observation Time Series: Wilkinson Basin Time Series Station (WBTS)

Creator: Jeffrey Runge, Ph.D (School of Marine Sciences, University of Maine, Darling Marine Center)
Data processor: Dylan Pugh

### Data Flow Diagram

```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'primaryColor': '#007396',
      'primaryTextColor': '#fff',
      'primaryBorderColor': '#003087',
      'lineColor': '#003087',
      'secondaryColor': '#007396',
      'tertiaryColor': '#CCD1D1'
    },
   'flowchart': { 'curve': 'basis' }
  }
}%%

flowchart LR

A["Marine Life data 
& 
metadata"] 

B[("Raw Data 
Access Point
(eg. RA ERDDAP)")]

C("Darwin Core
Alignment")

D[(NCEI)]

E[("OBIS node")]

G([OBIS])

H([GBIF])

I[("IOOS Data Catalog
(data.ioos.us)")]

FC(["Federal Catalogs/
Products"])


A --> B
B -- Metadata --> I
B --> C
B --> D

C --> E
E --> G
E --> H

I --> FC

G --> FC
H --> FC


D --> FC

click B "http://www.neracoos.org/erddap/tabledap/WBTS_CFIN_2004_2017.html" "NERACOOS ERDDAP" _blank
click C "https://github.com/ioos/bio_data_guide/issues/102" "Data standardization" _blank
click D "https://www.ncei.noaa.gov/access/metadata/landing-page/bin/iso?id=gov.noaa.nodc:0250940" "NCEI" _blank
click E "https://www1.usgs.gov/obis-usa/ipt/resource?r=gom_wbts_mesozooplankton" "OBIS-USA IPT" _blank
click G "https://obis.org/dataset/5ef55cd8-05a1-4569-8e17-ceb224e40f59" "OBIS" _blank
click H "https://www.gbif.org/dataset/29651377-23c8-4f45-b439-693a1a23cee1" "GBIF" _blank
click I "htpps://data.ioos.us" "IOOS Catalog" _blank
click FC "https://data.noaa.gov/onestop/collections/details/55309a04-8383-42ff-b2fe-ab3497431756" "OneStop" _blank
```

#### Access Points

Below is a table of the various places to discover these data and the process by which these data were standardized to Darwin Core.

Source | URL
-------|-----
NERACOOS ERDDAP | <http://www.neracoos.org/erddap/tabledap/WBTS_CFIN_2004_2017.html>
Data standardization process | <https://github.com/ioos/bio_data_guide/issues/102>
NCEI | <https://www.ncei.noaa.gov/access/metadata/landing-page/bin/iso?id=gov.noaa.nodc:0250940>
OBIS-USA IPT | <https://www1.usgs.gov/obis-usa/ipt/resource?r=gom_wbts_mesozooplankton>
OBIS | <https://obis.org/dataset/5ef55cd8-05a1-4569-8e17-ceb224e40f59>
GBIF | <https://www.gbif.org/dataset/29651377-23c8-4f45-b439-693a1a23cee1>
IOOS Catalog | <https://data.ioos.us/dataset/gulf-of-maine-wbts-calanus-abundance-observations>
NOAA OneStop | <https://data.noaa.gov/onestop/collections/details/55309a04-8383-42ff-b2fe-ab3497431756>

### Order of activities:**
1. Serve data and metadata on RA ERDDAP
2. Align ERDDAP data to DarwinCore
3. Share to OBIS-USA
4. OBIS-USA shares via IPT to OBIS and GBIF

#### Serving raw data via IOOS RA ERDDAP
Raw Gulf of Maine WBTS Calanus Abundance Observations available in ERDDAP: <http://www.neracoos.org/erddap/tabledap/WBTS_CFIN_2004_2017.html>

#### Aligning raw data to Darwin Core
This dataset was processed by Dylan Pugh during the 2022 Marine BioData Mobilization Workshop in the notebook linked below:

**MBTS MBON process:** <https://github.com/ioos/bio_data_guide/tree/main/datasets/WBTS_MBON>

#### Sending data to OBIS-USA
Data were submitted to OBIS-USA by contributing the Darwin Core aligned files (and code) to the [ioos/bio-data-guide](https://github.com/ioos/bio_data_guide) repository. See this [GitHub Issue](https://github.com/ioos/bio_data_guide/issues/102) and subsequent Pull Requests [here](https://github.com/ioos/bio_data_guide/pull/101) and [here](https://github.com/ioos/bio_data_guide/pull/108) for more information on the conversion process.

The processed files were uploaded to the repository and OBIS-USA downloaded them for loading in the OBIS-USA IPT.

Data were published via the OBIS-USA IPT at: <https://www1.usgs.gov/obis-usa/ipt/resource?r=gom_wbts_mesozooplankton>.

Data were shared to OBIS at: <https://obis.org/dataset/5ef55cd8-05a1-4569-8e17-ceb224e40f59>

Data were shared to GBIF at: <https://www.gbif.org/dataset/29651377-23c8-4f45-b439-693a1a23cee1>

#### Sending data to NCEI
1. Use [ERDDAP's `ArchiveADataset.sh`](https://coastwatch.pfeg.noaa.gov/erddap/download/setup.html#ArchiveADataset) for the dataset <http://www.neracoos.org/erddap/tabledap/WBTS_CFIN_2004_2017.html> to create an archival package for submission to NCEI as a one-off via [Send2NCEI](https://www.ncei.noaa.gov/archive/send2ncei/).
   1. To run as a one liner with a [Docker deployed ERDDAP](https://ioos.github.io/erddap-gold-standard/index.html), use this 
      ```
      $ docker run --rm -it \
      -v "$(pwd)/datasets:/datasets" \
      -v "$(pwd)/logs:/erddapData/logs" \
      -v "$(pwd)/erddap/content:/usr/local/tomcat/content/erddap" \
      -v "$(pwd)/erddap/data:/erddapData" \
      axiom/docker-erddap:latest \
      bash -c "cd webapps/erddap/WEB-INF/ && bash ArchiveADataset.sh -verbose BagIt tar.gz default WBTS_CFIN_2004_2017 default "" "" .nc SHA-256"
      ```
   2. This will create a `.tar.gz` package and accompanying `.tar.gz.sha256.txt` manifest file for the dataset. The `.tar.gz.sha256.txt` is the manifest for the `.tar.gz` file and can be used to verify the integrity of the package.
   3. Inside the `.tar.gz` package is an appopriately formatted BagIt package, as [defined by the Library of Congress](https://www.ietf.org/rfc/rfc8493.txt).
   4. The data file can be found in the `data/` directory of the `.tar.gz` package as a netCDF file (which was defined when the `ArchiveADataset.sh` tool was ran). 
2. Create an account in NCEI's Send2NCEI system: <https://www.ncei.noaa.gov/archive/send2ncei/>
3. Log in and **Create a New Submission Package**.
4. Populate the requested metadata fields for the dataset. Note that most of the requested metadata are already available in the ERDDAP metadata page, so copy and paste content from the record <http://www.neracoos.org/erddap/info/WBTS_CFIN_2004_2017/index.html> into the submission form.
   1. For example, `Start Date:` would map to `time_coverage_start`.
6. Once the metadata is completed, upload the `tar.gz` and `.tar.gz.sha256.txt` file and complete the package using the **Upload and Submit** button.
7. Record the **Reference ID** for your submission in case you need to reach out for questions.
8. Check the Send2NCEI **My Submission Packages** page to see the status of the submission.
9. Iterate with NCEI to answer any remaining questions they might have. 
10. Once archived and published, NCEI will provide an accession number and url to the dataset landing page. 

#### Loading data into MBON Portal
*Describe the process for loading data into MBON portal, including lessons learned. Include link to MBON portal layer.*

### Overall lessons learned
*Include any overarching lessons learned here.*
