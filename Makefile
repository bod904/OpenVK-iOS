export THEOS = /home/runner/theos
export TARGET = iphone:clang:9.3:6.0
export ARCHS = armv7 armv7s arm64

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = OpenVK

OpenVK_FILES = \
	OpenVK\ Me/main.m \
	OpenVK\ Me/AppDelegate.m \
	OpenVK\ Me/APICommunicator.m \
	OpenVK\ Me/AddInstanceViewController.m \
	OpenVK\ Me/ChatViewController.m \
	OpenVK\ Me/ConversationCell.m \
	OpenVK\ Me/ConversationsController.m \
	OpenVK\ Me/ExtendedTextField.m \
	OpenVK\ Me/FirstViewController.m \
	OpenVK\ Me/FriendCell.m \
	OpenVK\ Me/FriendsViewController.m \
	OpenVK\ Me/InstancesViewController.m \
	OpenVK\ Me/LoginViewController.m \
	OpenVK\ Me/MainTabController.m \
	OpenVK\ Me/MessageCell.m \
	OpenVK\ Me/NewsController.m \
	OpenVK\ Me/PostCell.m \
	OpenVK\ Me/PostComposeController.m \
	OpenVK\ Me/SecondViewController.m \
	OpenVK\ Me/SettingsController.m \
	OpenVK\ Me/TRMalleableFrameView.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/SDWebImageManager.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/UIImage+WebP.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/MKAnnotationView+WebCache.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/UIButton+WebCache.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/UIImageView+HighlightedWebCache.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/SDWebImageCompat.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/UIImage+GIF.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/SDWebImageDecoder.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/UIImageView+WebCache.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/UIView+WebCacheOperation.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/SDWebImagePrefetcher.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/SDWebImageDownloader.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/SDWebImageDownloaderOperation.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/UIImage+MultiFormat.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/SDImageCache.m \
	Libraries/SDWebImage-3.7.0/SDWebImage/NSData+ImageContentType.m \
	Libraries/SVPullToRefresh/UIScrollView+SVPullToRefresh.m \
	Libraries/SVPullToRefresh/UIScrollView+SVInfiniteScrolling.m

OpenVK_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore ImageIO MapKit
OpenVK_CFLAGS = -fobjc-arc -ILibraries/SDWebImage-3.7.0/SDWebImage -ILibraries/SVPullToRefresh -IOpenVK\ Me
OpenVK_LDFLAGS = -lz
OpenVK_INSTALL_PATH = /Applications

include $(THEOS_MAKE_PATH)/application.mk
