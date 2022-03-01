---
layout: page
title: members
permalink: /people/
description: #Members of the Orange Jellyfish group
nav: true
display_types: [current, alumni]
horizontal: false
---

<!-- pages/people.md -->
<div class="projects">
{%- for type in page.display_types %}
  <h2 class="type">{{ type }}</h2>
  {%- assign people = site.people | where: "type", type -%}
  {%- assign sorted_people = people | sort: "importance" %}
  <!-- Generate cards for each person -->
  <div class="grid">
  {%- for person in sorted_people -%}
    {% include person.html %}
  {%- endfor %}
  </div>
{% endfor %}
