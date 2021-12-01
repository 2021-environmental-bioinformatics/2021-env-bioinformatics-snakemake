# Snakemake Lab for Fall 2021 Environmental Bioinformatics Course

All the code and data files that you need for Thursday (2 December)'s activities in the wonderful world of `Snakemake`.

## Getting started

### Installing Snakemake

During Tuesday's class, we attempted to install `Snakemake` on our systems on Poseidon using the command:

```
conda create -n snakemake -c conda-forge -c bioconda snakemake mamba
```

You'll notice that I _did not_ specify a version of `Snakemake`...this is because I was worried that might be problematic across base `conda` installs (and overly complicated to do for the purposes of this demonstration). However, I'm hoping that most people got `Snakemake` version >=5.3. You can check you `Snakemake` version by typing:

```
conda activate snakemake
snakemake --version
```

To get started with today's exercises, you'll need to get some `conda` environments installed, such that they're all ready-to-go when we want to *actually* run our `Snakemake` workflows. For this, you can use the commands below. Before you do that, make sure your brand-new `Snakemake` `conda` environment is all ready-to-go. All of my commands assume that you're starting from the base directory of this `GitHub` repository, where this `README` file is located. If you haven't gotten that far yet, you'll want to **clone** this repository for easy working. I'm sure you've done that a hundred times, but here's the command for easy working:

```
git clone https://github.com/2021-environmental-bioinformatics/2021-env-bioinformatics-snakemake
```

Now, to get `Snakemake` working on generating our `conda` environments for us. First, change directories (`cd`) into the repository that you just cloned (or cloned earlier). Next: 

```
cd workflows/rename-fasta-snakemake/
snakemake --use-conda --conda-create-envs-only --conda-frontend mamba
```

And this should get `Snakemake` going! The one sticking point is the `--conda-frontend` flag, which is a more recent addition to `Snakemake` (so mileage may vary based on your version). If in a bind, just remove that flag.

