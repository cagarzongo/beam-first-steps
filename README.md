# Introduction to Apache Beam

![Jupyter logo](https://jupyter.org/assets/homepage/main-logo.svg)
<span style="color:orange;font-weight:700;font-size:40px">
    And
</span>
![Beam logo](https://beam.apache.org/images/beam_logo_navbar.png)


Here's a quick hookup to the Apache Beam SDK by running a test flow with both the Interactive Runner in a Notebook and the [Direct Runner](https://beam.apache.org/documentation/runners/direct/).

For more information consult the official [Beam documentation](https://beam.apache.org/documentation/).

## Usage

> Requires Docker Engine.

1. run the `build&run.sh` script. This script builds and configures a Jupiter image with the necessary dependencies to run Apache Beam jobs. __This may take some time depending on your internet connection.__
   * The running container will automatically load the `workspace` directory into this repository as a **Volume**, so all changes made either from the Jupyter interface or from the directory on your premises will be in sync.
2. Access the Jupyter instance from your browser. The keyword is set by default to **`"lab"`**.
3. From the Jupyter interface you can open and run the `workspace/first_steps.ipynb` notebook. Make sure the selected kernel is **`Python3 (beam_venv)`**.
   1. To continue your learning you can continue with the `workspace/first_steps.ipynb` notebook.
   2. Finally from the Jupyter interface you can open a terminal and run the following command to run the same example from the previous notebook but this time directly from a Python script.

   ```bash
   source ../beam_venv_dir/bin/activate
   python -m wordcount --input=my_text.txt --output=example_output.txt
   ```

   > Note that this is just an example and you can use any input file, as well as name the output file whatever you like.

I hope these examples have been helpful in your learning. If you have any questions do not hesitate to contact me.

carlos.garzon@mercadolibre.com.co
