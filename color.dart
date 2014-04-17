library color;

class _color {

  /**
   * functions and colors styles mapping
   */
  final Map<String, List<String>> _styles = {
    'bold': ['\x1B[1m', '\x1B[22m'],
    'italic': ['\x1B[3m', '\x1B[23m'],
    'underline': ['\x1B[4m', '\x1B[24m'],
    'inverse': ['\x1B[7m', '\x1B[27m'],
    'strikethrough': ['\x1B[9m', '\x1B[29m'],
    'white': ['\x1B[37m', '\x1B[39m'],
    'grey': ['\x1B[90m', '\x1B[39m'],
    'black': ['\x1B[30m', '\x1B[39m'],
    'blue': ['\x1B[34m', '\x1B[39m'],
    'cyan': ['\x1B[36m', '\x1B[39m'],
    'green': ['\x1B[32m', '\x1B[39m'],
    'magenta': ['\x1B[35m', '\x1B[39m'],
    'red': ['\x1B[31m', '\x1B[39m'],
    'yellow': ['\x1B[33m', '\x1B[39m'],
    'whiteBG': ['\x1B[47m', '\x1B[49m'],
    'greyBG': ['\x1B[49;5;8m', '\x1B[49m'],
    'blackBG': ['\x1B[40m', '\x1B[49m'],
    'blueBG': ['\x1B[44m', '\x1B[49m'],
    'cyanBG': ['\x1B[46m', '\x1B[49m'],
    'greenBG': ['\x1B[42m', '\x1B[49m'],
    'magentaBG': ['\x1B[45m', '\x1B[49m'],
    'redBG': ['\x1B[41m', '\x1B[49m'],
    'yellowBG': ['\x1B[43m', '\x1B[49m']
  };

  /**
   * color functions
   */
  Map<String, Function> fns = {};

  /**
   * object cache
   */
  static _color _cache;

  /**
   * factory constructor for singlon pattern
   */
  factory _color() {
    if (_cache == null) _cache = new _color._internal();
    return _cache;
  }

  /**
   * internal constructor
   */
  _color._internal() {
    _styles.keys.forEach((k) {
      fns.putIfAbsent(k, () => (String s) =>
          "${_styles[k][0]}$s${_styles[k][1]}");
    });
  }
}

class color {

  /**
   * color function create from factory
   */
  static var _fns = new _color().fns;

  /**
   * convert string to bold font
   */
  static bold(String s) => _fns['bold'](s);

  /**
   * convert string to italic font
   */
  static italic(String s) => _fns['italic'](s);

  /**
   * add underline to string
   */
  static underline(String s) => _fns['underline'](s);

  /**
   * inverse the color of the string
   */
  static inverse(String s) => _fns['inverse'](s);

  /**
   * add strikethrough to string
   */
  static strikethrough(String s) => _fns['strikethrough'](s);

  /**
   * convert string color to white
   */
  static white(String s) => _fns['white'](s);

  /**
   * convert string color to white
   */
  static grey(String s) => _fns['grey'](s);

  /**
   * convert string color to white
   */
  static black(String s) => _fns['black'](s);

  /**
   * convert string color to white
   */
  static blue(String s) => _fns['blue'](s);

  /**
   * convert string color to cyan
   */
  static cyan(String s) => _fns['cyan'](s);

  /**
   * convert string color to green
   */
  static green(String s) => _fns['green'](s);

  /**
   * convert string color to magenta
   */
  static magenta(String s) => _fns['magenta'](s);

  /**
   * convert string color to red
   */
  static red(String s) => _fns['red'](s);

  /**
   * convert string color to yellow
   */
  static yellow(String s) => _fns['yellow'](s);

  /**
   * convert string background color to white
   */
  static whiteBG(String s) => _fns['whiteBG'](s);

  /**
   * convert string background color to grey
   */
  static greyBG(String s) => _fns['greyBG'](s);

  /**
   * convert string background color to black
   */
  static blackBG(String s) => _fns['blackBG'](s);

  /**
   * convert string background color to blue
   */
  static blueBG(String s) => _fns['blueBG'](s);

  /**
   * convert string background color to cyan
   */
  static cyanBG(String s) => _fns['cyanBG'](s);

  /**
   * convert string background color to green
   */
  static greenBG(String s) => _fns['greenBG'](s);

  /**
   * convert string background color to magenta
   */
  static magentaBG(String s) => _fns['magentaBG'](s);

  /**
   * convert string background color to red
   */
  static redBG(String s) => _fns['redBG'](s);

  /**
   * convert string background color to yellow
   */
  static yellowBG(String s) => _fns['yellowBG'](s);

}
