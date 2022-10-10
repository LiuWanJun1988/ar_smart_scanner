
enum BubbleType { stockInfo, barcodeData }

class BubbleViewState {
  var _state = BubbleType.stockInfo;

  BubbleViewState(this._state);

  void switchState() {
    switch (_state) {
      case BubbleType.stockInfo:
        _state = BubbleType.barcodeData;
        break;
      default:
        _state = BubbleType.stockInfo;
        break;
    }
  }

  BubbleType get viewType {
    return _state;
  }
}
