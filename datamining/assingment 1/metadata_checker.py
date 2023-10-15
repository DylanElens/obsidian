import argparse
from bs4 import BeautifulSoup
import json
import numpy as np
import sys


def get_metadata(notebook_name):
    """
    Get metadata from notebook notebook_name. Practically, parse the notebook into a json object and try to read
    all grade_id fields
    :param notebook_name:
    :return: grade_id_array: array of all grade_ids present in the notebook.
    """
    with open(notebook_name) as f:
        #soup = BeautifulSoup(f.read(), 'html.parser')
	
        cells = json.loads(f.read())["cells"]

        grade_id_array = []
        for cell in cells:
            try:
                grade_id_array.append(cell["metadata"]["nbgrader"]["grade_id"])
                if cell["cell_type"] != cell["metadata"]["nbgrader"]["cell_type"]:
                    print("\033[91m You changed the type of one of your notebook cells. \033[00m", file=sys.stderr)
                    return []
            except KeyError:
                continue
        return grade_id_array

def check(ground_truth_name, edited_name):
    """
    Given two notebook names, get arrays of grade_id fields and compare them.
    If either these arrays are not the same length, or they are not exactly equal, then there is metadata missing from
    one of the notebooks - which is almost certainly the edited notebook.
    :param ground_truth_name:
    :param edited_name:
    :return:
    """
    try:
        ground_truth, check_cells = get_metadata(ground_truth_name), get_metadata(edited_name)
    except json.decoder.JSONDecodeError:
        print("\033[33mThe .ipynb file could not be parsed. Please provide a valid .ipynb file.\033[00m")
    except FileNotFoundError:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        print("\033[33mPlease provide a correct notebook file. The incorrect argument seems to be:", str(exc_obj).split(" ")[-1]+"\033[00m")
    else:
        if len(np.array(ground_truth)) == len(np.array(check_cells)) and all(np.array(ground_truth) == np.array(check_cells)):
            print("\033[92m[SUCCESS] No metadata seems to be missing. \033[00m")
        else:
            print("\033[91m[FAILED] Uh oh. Something is wrong with your notebook metadata. \n\
Copy the code from your edited notebook into the template notebook using the Jupyter notebook environment to resolve this issue.\033[00m", file=sys.stderr)
    return

parser = argparse.ArgumentParser(
                    prog = 'Metadata Checker',
                    description = 'For a given assignment template, checks whether autograder metadata is still present \n \
                    in the assignment notebook that you edited. Provide this script with the filename of  \
                    the notebook you edited the first argument, and the filename of the template \
                    notebook for the assignment as the second argument. The message this script outputs will be \
                    \033[92mgreen\033[00m if your notebook seems to be okay, and \033[91mred\033[00m otherwise.',
                    epilog = 'We tested this script thoroughly, but it is possible we did not account for all exceptions. \n \
                    Therefore, no guarantees can be derived from this check, but it should give you an okay indication of the state of your notebook.')

parser.add_argument("edited_assignment_name", help="name of edited assignment")
parser.add_argument("template_assignment_name", help="name of template assignment")

if __name__ == '__main__':
    args = parser.parse_args()
    check(args.template_assignment_name, args.edited_assignment_name)
