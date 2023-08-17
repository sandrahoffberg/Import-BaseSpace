[![Code Ocean Logo](images/CO_logo_135x72.png)](http://codeocean.com/product)

<hr>

# Download data or whole Illumina runs from BaseSpace <br>

The purpose of this capsule is to download a project or fastq reads directly from [BaseSpace](space.illumina.com/dashboard), without having to transfer to AWS, box, or a local machine before transfering again to Code Ocean. 

**Step 1**: Fill out the app panel to indicate what you want to download

**Step 2**: Run the capsule.

**Step 3**: Click on the link in the output file to authenticate the software.  This capsule requires an access token, which can only be obtained by navigating to URL after authenticating software.  You will be brought to a page to sign in to the Illumina website and you must sign into BaseSpace using your own credentials.

![BaseSpace_sign_in](images/BaseSpace_sign_in.png)

Then you must accept the following permissions:

![bs_authentication](images/bs_authentication.png)
 

You can also attach your Illumina credentials to this capsule as a secret. To do this, 
1. Click on environment to display the environment editor in a capsule.
2. Scroll down to see the Secrets section.
3. Click on Attach secret to capsule, and a drop-down menu that contains the secret list from your account settings page will appear.
4. Select the secret you want to attach.

You will only be able to download runs that you own or that are shared with you. If not clicked, the link to authenticate the software will expire after 2 minutes, and the capsule run will fail. 


**Step 4**: Create a data asset from the output of this capsule to analyze your data. 

## Input
None 

## Output
The Illumina run or demultiplexed fastq files

## App Panel Parameters

Project or Run ID
- Found in basespace.illumina.com URL for that project or run. Note that these IDs are different.
- You will only be able to download runs that you own or are shared with you. 


Download the entire RUN or demultiplexed files (PROJECT)
- Determine whether you want all associated data (the Run folder) or just the demultiplexed fastq.gz files (project) [defult: project]


## Documentation
https://developer.basespace.illumina.com/docs/content/documentation/cli/cli-overview


<hr>

[Code Ocean](https://codeocean.com/) is a cloud-based computational platform that aims to make it easy for researchers to share, discover, and run code.<br /><br />
[![Code Ocean Logo](images/CO_logo_68x36.png)](https://www.codeocean.com)
