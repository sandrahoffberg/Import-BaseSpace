[![Code Ocean Logo](images/CO_logo_135x72.png)](http://codeocean.com/product)

<hr>

# Download data or whole Illumina runs from BaseSpace <br>

The purpose of this capsule is to download a project or fastq reads directly from [BaseSpace](space.illumina.com/dashboard), without having to transfer to AWS/box/local machine before transfering again to Code Ocean. 

**Step 1**: Fill out the app panel to indicate what you want to download

**Step 2**: Run the capsule.

**Step 3**: Click on the link in the output to authenticate the software.

This capsule requires an access token, which can only be obtained by navigating to URL after authenticating software.  Therefore, you must sign into BaseSpace using your own credentials (or attach them to capsule for RR) and will only be able to download runs that you own or are shared with you. 

**Step 4**: Create a data asset from the output of this capsule to analyze your data. 

## App Panel Parameters

- Project or Run ID, found in basespace.illumina.com URL for that project or run. Note that these IDs are different.

- Download the entire RUN or demultiplexed files (PROJECT)?

- What file format to download, bcl or fastq's



<hr>

[Code Ocean](https://codeocean.com/) is a cloud-based computational platform that aims to make it easy for researchers to share, discover, and run code.<br /><br />
[![Code Ocean Logo](images/CO_logo_68x36.png)](https://www.codeocean.com)
