# add words to custom dictionary
issues <- checklist::check_spelling()
checklist::custom_dictionary(issues)
checklist::write_checklist()
