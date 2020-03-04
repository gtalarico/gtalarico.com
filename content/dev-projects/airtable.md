+++
title = "Airtable Python Wrapper"
description = "Python Client for Airtable Api"
slug = "airtable"
tags = [
    "python",
    "cli",
    "client",
]
categories = [
    "Development",
]
+++

A light-weight python client library for the [Airtable Api](https://airtable.com/api)

<a class="github-button" href="https://github.com/gtalarico/airtable-python-wrapper" data-size="large" data-show-count="true" aria-label="Star gtalarico/airtable-python-wrapper on GitHub">Star</a>

#### Links

<div class="links">
    <i class="fab fa-github"></i>
    <a href="https://github.com/gtalarico/airtable-python-wrapper/">Repo</a>
    <br>
    <i class="fab fa-python"></i>
    <a href="https://pypi.python.org/pypi/airtable-python-wrapper">PyPi Package</a>
    <br>
    <i class="fas fa-link"></i>
    <a href="https://pypistats.org/packages/airtable-python-wrapper">Stats</a>
    <br>
    <i class="fas fa-book-open"></i>
    <a href="https://airtable-python-wrapper.readthedocs.io">Documentation</a>
</div>

#### Usage
```python
from airtable import Airtable
table = Airtable('basekey', 'table_name')

# Get
table.get_all()
# [{id:'rec123asa23', fields': {'Column': 'Value'}, ...}]

# Search
airtable.search('ColumnA', 'SearchValue')
# [{id:'rec123asa23', fields': {'Column': 'Value'}, ...}]
```






