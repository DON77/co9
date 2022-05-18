dynamic validateJournal(String value) {
  if (value == '') {
    return 'Please input journal number';
  }
  Pattern pattern = '';

  RegExp regex =  RegExp(pattern.toString());
  return (!regex.hasMatch(value)) ? 'Invalid number' : null;
}
