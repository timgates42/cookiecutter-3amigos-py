"""
Test modules for {{ cookiecutter.py_modulename }}.__main__
"""


def test_main():
    """
    GIVEN the {{ cookiecutter.py_modulename }}.__main__
    module entry point WHEN calling main THEN the call executes successfully
    with a result of `None`
    """
    # Setup
    from {{ cookiecutter.py_modulename }}.__main__ import main
    # Exercise
    result = main()  # pylint: disable=assignment-from-no-return
    # Verify
    assert result is None  # nosec