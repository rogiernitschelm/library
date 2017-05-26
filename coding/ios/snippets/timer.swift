var timer = Timer()

func tick() {
    timeLabel.text = Utilities().getCurrentTime()
}

override func viewDidLoad() {
    super.viewDidLoad()

    self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.tick), userInfo: nil, repeats: true)

}
