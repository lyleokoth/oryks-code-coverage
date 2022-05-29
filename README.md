# oryks-code-coverage

This action shows code coverage using pytest coverage. To read about how it was developed, check out [How To Create a GitHub Action that Shows Code Coverage using Pytest](https://medium.com/@lyle-okoth/creating-a-pytest-github-action-that-shows-code-coverage-b0d11655b748).

## Inputs

## `codedirectory`

**Required** The directory containing the source code. Default `"."`.

## `testdirectory`

**Required** The directory containing the tests. Default `"tests\"`.

## `pycovconfigfile`

**Optional** The pycov configuration file Default `".coveragerc"`.

## `pytestconfigfile`

**Optional** The pytest configuration file. Default `"setup.cfg"`.

## Outputs

## `testcoverage`

The Test coverage

## Example usage
```
- name: oryks code coverage action
  id: selftest
  uses: twyle/oryks-code-coverage@v1.0.0
  with:
    codedirectory: src/
    testdirectory: tests/

- name: action output
  run: |
    echo "${{ steps.selftest.outputs.testcoverage }}
```
