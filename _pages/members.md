---
layout: page
title: members
permalink: /members/
description: #Members of the Orange Jellyfish group
nav: true
display_types: [member, alumnus]
horizontal: false
types_titles:
  member: current members
  alumnus: alumni
---

<!-- pages/people.md -->
<div class="projects">
{%- for type in page.display_types %}
  <h2 class="type">{{ page.types_titles[type] }}</h2>
  {%- assign people = site.people | where: "type", type -%}
  {%- assign sorted_people = people | sort: "importance" %}
  <!-- Generate cards for each person -->
  <div class="grid">
  {%- for person in sorted_people -%}
    {% include person.html %}
  {%- endfor %}
  </div>
{% endfor %}
