# Introduction

This portal provides access to and interactive visualizations of data associated with the [Marine Biodiversity Observation Network (MBON)](https://ioos.noaa.gov/project/bio-data/). The portal includes real-time, delayed-mode, and historical data for in situ and remotely-sensed physical, chemical, and biological observations. This observation data is focused on organisms from microbes to whales, including measures of biodiversity (e.g. presence, abundance), productivity, genomics, phenology, and other relevant ecological process measurements or indices. Also featured are habitat characterization and habitat diversity measures, including satellite data and added-value data derived from satellite observations, and neural network model results, such as biogeographical seascape classifications. Featured in this portal are biodiversity indices that have been computed for key biological datasets within the MBON regions.

The data have been generated within the MBON regions of the Chukchi Sea (Alaska), Santa Barbara Channel (California), and the National Marine Sanctuaries in Monterey Bay (California) and the Florida Keys (Florida). Data have been collected by associated scientists or provided by multiple other independent programs, such as the Long-Term Ecological Research (LTER) programs, universities, and other fisheries or marine wildlife institutions.  

This document describes the [MBON portal](http://mbon.ioos.us/) and its underlying functionality. Information is included about:
* using the portal;
* submitting new data to portal; and
* formatting and documentation of data. 

# Using the MBON Data Portal

The MBON Data Portal is a data exploration tool with a customized public web interface that allows scientists, managers, and the general public to discover and access public data from many sources. The portal has two components: 1) Catalog and 2) Map View.

## Catalog

The Catalog provides search access for all datasets within the portal. The Catalog can be used to discover, browse, and download data files. Additionally, the Catalog can be used to add visualizable data layers to the Portal Map View. The Catalog contains several observational data types:

**Real-time data** are ingested, served, and displayed by the MBON Data Portal at the same frequency the data are collected (and sometimes reported) by the originator with little to no delay. Examples of real-time assets include weather stations, oceanographic buoys, and webcams.

**Near real-time data** are ingested by the MBON Data Portal at the same frequency that the data are made available; however, there is some delay (hours to days) between data collection and when the data provider makes it available. Examples of near real-time assets include satellite images and derived satellite products.

**Historical data** are data that are one month old or older. Historical data are ingested from the associated Research Workspace or from national archives upon stakeholder request. Examples include species abundance surveys and similar research efforts. 

## Map View

The Map View provides interactive data exploration, mapping, and charting for visualizable layers available in the catalog. All real-time and near real-time data within the MBON Data Portal are accessible as interactive visualizations in the map view (as indicated with a map preview image in the catalog). Historical data are also accessible as interactive visualizations in the Map View, with the exception of datasets that may be published directly to the Catalog from the Research Workspace (more HERE).

The Map View is highly customizable (“Settings” and “Legend”), enabling deep exploration of the data. Advanced charting features allow users to view and summarize multiple datasets, and to create custom Data Views to compare data sources, bin by time, or plot climatologies and anomalies of timeseries datasets. Users can create and share custom compilations of biological, sensor, and model outputs to spotlight environmental events or geographic locations. 

## Help Documentation Contents

Below are links to the help documentation for the MBON Data Portal.
* [Overview](http://help.axds.co/portals/#introduction)
* [Data Catalog](http://help.axds.co/portals/DataCatalog.html#data-catalog)
* [Data Map](http://help.axds.co/portals/DataMap.html#data-map)
* [Download Data](http://help.axds.co/portals/DataCatalog.html#download-visualized-data)
* [Creating Custom Data Views](http://help.axds.co/portals/DataMap.html#data-views)

# Data and File Formatting

In choosing a file format, data collectors should select a format that is usable, open, and that will likely be readable well into the future. Microsoft Excel, as an example, is a useful tool for data manipulations and data visualization, but versions of Excel files may become obsolete and may not be easily readable over the longer term. Likewise, database management systems (DBMS) like MS Access, Filemaker Pro, and others, can be a very effective way to store and query data, but the raw formats tend to change over time (even a few years). If your program or organization has used these or other proprietary DBMS tools, it is essential to plan for exporting your data in a stable, well-documented, and non-proprietary format.

Below is a summary of the suggested tabular, image, and GIS data file formats suitable for long-term archiving.
* Containers: TAR, GZIP, ZIP
* Databases: CSV, XML
* Tabular data: CSV
* Geospatial vector data: SHP, GeoJSON, KML, DBF, NetCDF
* Geospatial raster data: GeoTIFF/TIFF, NetCDF, HDF-EOS
* Moving images: MOV, MPEG, AVI, MXF
* Sounds: WAVE, AIFF, MP3, MXF
* Statistics: ASCII, DTA, POR, SAS, SAV
* Still images: TIFF, JPEG 2000, PDF, PNG, GIF, BMP
* Text: XML, PDF/A, HTML, ASCII, UTF-8
* Web archive: WARC

For more complete guidance on best practices and appropriate formats for long-term preservation and future accessibility, see the [Library of Congress’ Sustainability of Digital Formats](https://www.loc.gov/preservation/digital/formats/) web site, the LOC’s page on [Recommended Format Specifications for preservation](https://www.loc.gov/preservation/resources/rfs/), and Hook et al’s recommendations in [Best Practices for Preparing Environmental Data Sets to Share and Archive](https://daac.ornl.gov/PI/BestPractices-2010.pdf).
 
## Tabular Data

Tabular data, or data in tables or spreadsheets, is by far the most common format for presenting, analyzing, and storing data. However, common spreadsheet file formats are not ideal for sharing, preserving, and reusing data; they’re not easily machine readable and may be difficult or impossible to read if the specific software tools used to create them are significantly upgraded or outmoded.
 
Using delimited text formats is a better way to ensure that tabular data are readable in the future. A delimited text file is an ASCII-encoded file used to store data in which each line is uniquely represented and had fields separated by a special character—the delimiter. Common delimiters are the comma, tab, and colon. In a file with comma-separated values (a CSV file), the data values are separated using commas as a delimiter. One benefit of being incredibly common and simple to use is that most database and spreadsheet programs are able to read in or export data in a text-delimited format.
 
*Comma Separated Values (CSV)* is the most common delimited data format. If your data has strings or sentences that may contain commas, be sure to wrap all string values in quotation marks (“”) or another delimiter that may not be present in your data. The semicolon, (;), and a tab (“ “ , or “t”) are other common delimiters. Text delimited files can be imported and exported by almost any software designed for storing or manipulating data, including relational database systems, spreadsheet software, and statistical analysis software.
 
*ASCII (American Standard Code for Information Interchange)* is the most common text encoding and the one most likely to be readable by tools. Other text encodings, such as UTF-8 are possible and may be necessary for some non-English applications. Avoid obscure text encodings. Use ASCII if possible, with UTF-8 or UTF-16 as secondary options.
 
*Relational database management systems (RDBMS)* (such as Microsoft Access) create file formats that need specialized software to open and view the contained information. Creating CSV files or ASCII text versions and PDF/A’s of the data provider’s original data ensures that the information contained within the file is openly accessible to data customers. Tabular data stored within relational databases should be broken out into CSV files or ASCII text versions with all table relationships described in enough detail for the database to be recreated.
 
## Data Headers

In order for others to use your data, they must fully understand the contents of the dataset. Most commonly, data values within a file are organized in rows and columns, with each event or observation as a row and each column representing a measurement or contextual information. Use a header row at the top of each file describing the values in column.

Follow these best practices for data headers:
* Use commonly accepted parameter names for header titles (e.g. site, date, treatment, units of measure, etc).
* Use consistent capitalization of header names (e.g. temp and precip, or Temp and Precip).
* Explicitly state units of reported parameters in the data file and the metadata.
* If a coded value of abbreviation is used, be sure to provide a definition in the metadata.
* Adopt a similar structure across data files. If the same parameters are used across multiple files, use a file template to maintain consistent column names across files. Avoid having different numbers of columns or rearranging columns across similar files.
* Column names or headings should contain only numbers, letters, hyphens, and underscores—no spaces or special characters. This also applies to column names and table names in databases. Special characters and spaces are error-prone when machine-read or edited.

## Data Values
To allow others to best understand your data, follow these best practices for values within a data file:
* Standardize all coded and null values within a dataset.
* Use an explicit value for missing or no data, rather than an empty field. Or, distinguish between a zero and a blank value for numeric fields.
* For numeric fields, represent missing data with a specified extreme value (e.g., -9999), the IEEE floating point NaN value (Not a Number), or the database NULL. Be advised that NULL and NaN can cause problems, particularly with some older programs. For character fields, use NULL, “not applicable”, “n/a” or “none”.
* If there are multiple reasons that cells might not values, include a separate code for each reason.
* The null value(s) should be consistently applied within and among data files.
* If data values are encoded, be sure to provide a definition in the metadata.
* Don’t include rows with summary statistics. It is best to put summary statistics, figures, analyses, and other summary content into a separate companion data file.
 
## Specific Formatting Recommendations for Biological Data

Biological data is often stored in tabular formats such as spreadsheets and database tables. Examples of biological datasets may include environmental data, such as temperature, salinity, or conductivity, but focus on measuring variables related to one or more species of plant or animal. Examples of biological data include, but are not limited to, marine bird surveys, genetic analyses of salmon stocks, and toxicological analyses of lichen.
 
For biological data submitted to the MBON portal, the following best practices apply:

1. Archive data in CSV (or another non-proprietary, text-based format) whenever possible.
2. Follow established conventions when naming variables or columns. Refer to the [IOOS Biological Data Terminology](https://ioos.github.io/biological-data-services/biological-observations.html#ioos-biological-data-terminology) for a list of data fields with names, descriptions, and format notes.
3. Define distinct events (such as location, time (with time zone), and/or depth) within a file with a unique identifier. The identifier is often presented as sample_id or collection_event_id.
4. Include both the common name, the scientific name, and the [ITIS Taxonomic Serial Number (TSN)](https://www.itis.gov/) and/or [WoRMS AphiaID code](http://www.marinespecies.org/aphia.php?p=match) for each species.
5. For visualization of data in the MBON portal, it is best to normalize data to a scale such that different factors can be compared. Normalized data is often presented as count per area, count per volume, catch per unit effort, etc. Normalized data should be clearly differentiated from non-normalized values if presented within the same data file.

# Metadata and Documentation

Descriptive metadata and documentation are critical to maintaining data quality. Metadata is “data about the data” that describes and contextualizes the dataset to ensure it is understandable to future users. Beyond standardized metadata, useful documentation might include standard operating procedures, field notes, etc., from which metadata may be derived or referenced.

Throughout the data lifecycle, both the metadata and documentation must be recorded and updated to reflect the actions taken to the data. This includes collection, acquisition, processing, quality review, and analysis, as well as any other stage of the data lifecycle.

The dataset’s metadata and/or documentations (or a link to it) must be distributed with the biological dataset for submission to MBON data portal. The metadata will be made available alongside the dataset within the portal. 

## Metadata

Metadata describes information about a dataset to ensure that it can be understood and re-used properly in the future. Content of the metadata record includes where the data were collected, who is responsible for the data, why the data were created, how the data are organized, and any derived data calculation methods (e.g. for fish abundance estimate) that were used. Metadata generally follows a standard format to ensure the semantics of metadata fields are understood by creators and consumers of the metadata, to ease the use of the metadata in catalog and discovery systems, and simplify automatic machine-to-machine transfer of records.

It is recommended to use the ISO 19115 XML for metadata standards following the ISO 19115 guidance from [NGDC](https://www.ngdc.noaa.gov/metaview/page?xml=NOAA/NESDIS/NGDC/STP/Geomag/iso/xml/G10161.xml&view=xml2text/xml-to-text-ISO) and [NCDDC](https://www.ncddc.noaa.gov/metadata-standards/). See also the [Category:ISO 19115 in the NOAA Environmental Data Management Wiki](https://geo-ide.noaa.gov/wiki/index.php?title=Category%3AISO_19115). If data are being served by ERDDAP, then ERDDAP will automatically generate the ISO and FGDC XML documents. Metadata in the [FGDC-authored Content Standard for Digital Geospatial Metadata (CSDGM)](https://www.fgdc.gov/metadata/csdgm-standard) format may also be submitted following the [Content Standard for Biological Data Profile](https://www.fgdc.gov/standards/projects/metadata/biometadata/biodatap.pdf).

If using the [Research Workspace](https://researchworkspace.com/intro/) to submit data, an integrated metadata editor is included to generate metadata in the FGDC-endorsed ISO 19110 and 19115-2 standards for geospatial metadata. Refer to the [Metadata Best Practices](http://www.axiomdatascience.com/best-practices/MetadataBestPractices.html#metadata-best-practices) section for help creating scientific metadata using the Research Workspace metadata editor. This document provides field-by-field guidance on how to write high-quality metadata.

## Additional Data Documentation

* Save documentation about the data in non-proprietary file formats, such as .txt, .xml, or .pdf.
* Images, pictures, or figures should be saved as JPEG or GIF files.
* The name of the documentation should follow a logical naming convention identical to the related data file(s), but indicating that the file is a metadata record, e.g. [data_file_name]_METADATA.xml.
* For complicated datasets, supplemental documentation is more useful when structured as a user’s guide for the data. When constructing such a guide, include enough detail for someone with sufficient domain knowledge to understand, trust, and reuse your data 20+ years in the future.

# Contributing Data to the MBON Portal	

The MBON Data Portal is composed of two parts: 1) Catalog and 2) Map View. Data files can be added to the Catalog by MBON researchers automatically using the Research Workspace, or through other non-automated data server pathways. Visualizing data within the Portal Map View requires processing by Axiom Data Science to be made available. Processing time varies as a function of data format and complexity. 

## Adding to the Data Catalog

Project investigators are responsible for making sure data become accessible through the MBON Portal using one of the following pathways. As much as possible, data submission via the Research Workspace is preferred to streamline publication to the Catalog. Data can be added to the Catalog using one of several pathways:

1. auto submission pathway from the Research Workspace;
2. harvest from ERDDAP or OBIS webservice;
3. contribution to Axiom Data Science (on behalf of MBON) by the originator;

### Contributing Data via the Research Workspace 

The general process for data submission is outlined below:
1. Data are organized in the MBON Research Workspace (https://researchworkspace.com) and accompanied by robust, descriptive metadata using the integrated ISO-compliant metadata editor (ISO-19115-2). For assistance using the Research Workspace and its metadata editor visit: https://workspace.aoos.org/help/
2. Once the data have been loaded and/or its embargo period ends, the researcher selects the ['Publish'](https://workspace.aoos.org/help/PublishingData.html#publishing-data) option for their project in the Research Workspace.
3. The entire contents of that folder and any subfolder therein will then be displayed in its native file format within the Catalog of the MBON Portal, where public users can view and download the data and associated metadata. 

### Contributing Data via ERDDAP or OBIS

Data can be contributed via ERDDAP or OBIS to the MBON Data Portal, though (at the time of writing) this pathway requires some manual effort by Axiom Data Science to synchronize these services. Researchers should follow the recommended guidelines for each of these services: [ERDDAP](http://coastwatch.pfeg.noaa.gov/erddap/index.html) and [OBIS](http://mmisw.org/ont/ioos/marine_biogeography). From these services, Axiom Data Science can access and download data for display through the MBON Data Portal. Custom Java, Scala, and Python scripts are used to convert data formats suitable for internal and external interoperability services. 

## Adding to the Map View

All data submitted to the MBON Data Portal, with the exception of real-time observation data, require graphic displays generated through internal JSON-format data requests from the MBON Portal interoperability services. Regardless of the data submission pathway, processing by Axiom Data Science is required to connect data files to the interoperability services for data mapping and visualization. 

Graphic displays in the Map View include a mapping service, customized interactive visualizations, and time-series plots of the unit values wherein each parameter is graphed independently. Back-end scripts handle the conversion of visualized data from CF standards to other, non-CF units that may be requested by the user. 

Summary statistics and biodiversity indice calculations generated within the interactive graphical displays may be requested by the user. Summary statistics may include minimum, maximum and mean values. Seasonal statistics, available on time series longer than 3 years, include mean, and 10th and 90th percentiles. Note: the number of points visually available to interactive users from the source data are limited when necessary using temporal binning, such as daily, weekly, monthly, seasonally and yearly. More information about these calculations is available in the [Portal Help Documentation](http://help.axds.co/portals/DataMap.html#id6) and below.

# How Biodiversity Data Products are Created

## Calculating Biodiversity Indices

The following biodiversity indices are available for datasets that include sample/collection event id and species identifier (scientific name, common name, ITIS TSN, or WoRMS Aphia ID). Indices are calculated at a local and regional scales (alpha and gamma diversity, respectively).

* **Richness:** The number of distinct species in a sample. 
* **Dominance (Berger-Parker):** The numerical importance of the most abundant species. 
* **Evenness (Pielou's):** A quantification of how equal the species counts are within a sample or region. (
* **Shannon-Wiener Index/Diversity:** An index that accounts for both abundance and evenness of the species present. 


