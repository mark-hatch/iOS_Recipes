class AppDelegate_iPhone
   def application(application, didFinishLaunchingWithOptions:launchOptions)
    @view = []
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @view = NSBundle.mainBundle.loadNibNamed('MainWindow_iPhone', owner:self, options:nil).first
    @window.rootViewController = @view
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
  end
end
