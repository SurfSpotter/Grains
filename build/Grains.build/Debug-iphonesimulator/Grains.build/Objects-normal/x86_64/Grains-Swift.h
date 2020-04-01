// Generated by Apple Swift version 5.1.3 (swiftlang-1100.0.282.1 clang-1100.0.33.15)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <Foundation/Foundation.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if !defined(IBSegueAction)
# define IBSegueAction
#endif
#if __has_feature(modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import Foundation;
@import MessageUI;
@import ObjectiveC;
@import StoreKit;
@import UIKit;
@import UserNotifications;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="Grains",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@class UIApplication;
@class UISceneSession;
@class UISceneConnectionOptions;
@class UISceneConfiguration;

SWIFT_CLASS("_TtC6Grains11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions SWIFT_WARN_UNUSED_RESULT;
- (UISceneConfiguration * _Nonnull)application:(UIApplication * _Nonnull)application configurationForConnectingSceneSession:(UISceneSession * _Nonnull)connectingSceneSession options:(UISceneConnectionOptions * _Nonnull)options SWIFT_WARN_UNUSED_RESULT;
- (void)application:(UIApplication * _Nonnull)application didDiscardSceneSessions:(NSSet<UISceneSession *> * _Nonnull)sceneSessions;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIView;
@class UIImageView;
@class UILabel;
@class UIButton;
@class UIProgressView;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC6Grains25DescriptionViewController")
@interface DescriptionViewController : UIViewController
@property (nonatomic, weak) IBOutlet UIView * _Null_unspecified viewOutlet;
@property (nonatomic, weak) IBOutlet UIImageView * _Null_unspecified grainMainImageOut;
@property (nonatomic, weak) IBOutlet UIView * _Null_unspecified charactersViewOutlet;
@property (nonatomic, weak) IBOutlet UIView * _Null_unspecified descriptionViewOtlet;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified descLabelOutlet;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified propotionsLabOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified quantOfGrainOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified quanOfWaterOut;
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified timerButtonOut;
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified caloriesButtonOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified boilTimeLabOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified calMainDescLabOut;
@property (nonatomic, weak) IBOutlet UIProgressView * _Null_unspecified progressBarOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified coutndownTimerOut;
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified startButtonOut;
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified setTimeOut;
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified minusButTimerOut;
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified plusButTimerOut;
- (IBAction)minusButTimerAction:(id _Nonnull)sender;
- (IBAction)plusButTimerAction:(id _Nonnull)sender;
- (IBAction)startButtonAction:(id _Nonnull)sender;
- (IBAction)setTimeButtonAction:(id _Nonnull)sender;
- (void)timerSelector;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified carbLabOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified fatLabOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified protLabOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified in100GrLabOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified calLabOut;
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified addToFavButOut;
- (IBAction)addToFavButAction:(id _Nonnull)sender;
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (IBAction)setTimerAction:(id _Nonnull)sender;
- (IBAction)showCaloriesButton:(id _Nonnull)sender;
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified backButtomOut;
- (IBAction)backButtonAction:(id _Nonnull)sender;
- (void)viewWillLayoutSubviews;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC6Grains16FavTableViewCell")
@interface FavTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UIImageView * _Null_unspecified imageOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified nameOut;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified timeBoilOut;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class UITableView;
@class UIStoryboardSegue;

SWIFT_CLASS("_TtC6Grains29FavouritesTableViewController")
@interface FavouritesTableViewController : UITableViewController
@property (nonatomic, weak) IBOutlet UIView * _Null_unspecified emptyView;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified ifEmpyLabel;
@property (nonatomic, weak) IBOutlet UIImageView * _Null_unspecified ImgIfEmptyOut;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)animated;
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (void)viewDidAppear:(BOOL)animated;
- (void)tableView:(UITableView * _Nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (void)prepareForSegue:(UIStoryboardSegue * _Nonnull)segue sender:(id _Nullable)sender;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC6Grains17MainTableViewCell")
@interface MainTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UIImageView * _Null_unspecified imgOfGrain;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified nameOfGrainLabel;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified timeOfBoilLabel;
- (IBAction)pushStartTimerAction:(id _Nonnull)sender;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER SWIFT_AVAILABILITY(ios,introduced=3.0);
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC6Grains23MainTableViewController")
@interface MainTableViewController : UITableViewController <UISearchControllerDelegate>
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (void)viewWillAppear:(BOOL)animated;
- (NSInteger)numberOfSectionsInTableView:(UITableView * _Nonnull)tableView SWIFT_WARN_UNUSED_RESULT;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (void)tableView:(UITableView * _Nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (void)prepareForSegue:(UIStoryboardSegue * _Nonnull)segue sender:(id _Nullable)sender;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class UISearchController;

@interface MainTableViewController (SWIFT_EXTENSION(Grains)) <UISearchResultsUpdating>
- (void)updateSearchResultsForSearchController:(UISearchController * _Nonnull)searchController;
@end

@class UISearchBar;

@interface MainTableViewController (SWIFT_EXTENSION(Grains)) <UISearchBarDelegate>
- (void)searchBar:(UISearchBar * _Nonnull)searchBar textDidChange:(NSString * _Nonnull)searchText;
- (void)searchBarCancelButtonClicked:(UISearchBar * _Nonnull)searchBar;
@end


SWIFT_CLASS("_TtC6Grains5Model")
@interface Model : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UISegmentedControl;

SWIFT_CLASS("_TtC6Grains19OtherViewController")
@interface OtherViewController : UIViewController
- (void)viewDidLoad;
@property (nonatomic, weak) IBOutlet UISegmentedControl * _Null_unspecified mesuresSCOutlet;
- (IBAction)rateAppButtonAction:(id _Nonnull)sender;
/// ! Do purschase the App Function!
- (IBAction)purchaseFullVersion:(id _Nonnull)sender;
- (IBAction)shareButtonAction:(id _Nonnull)sender;
- (IBAction)wtiteToDeveloperButtAction:(id _Nonnull)sender;
- (IBAction)selectMeasuteSCAction:(UISegmentedControl * _Nonnull)sender;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class MFMailComposeViewController;

@interface OtherViewController (SWIFT_EXTENSION(Grains)) <MFMailComposeViewControllerDelegate>
- (void)mailComposeController:(MFMailComposeViewController * _Nonnull)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError * _Nullable)error;
@end

@class UIWindow;
@class UIScene;

SWIFT_CLASS("_TtC6Grains13SceneDelegate")
@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (void)scene:(UIScene * _Nonnull)scene willConnectToSession:(UISceneSession * _Nonnull)session options:(UISceneConnectionOptions * _Nonnull)connectionOptions;
- (void)sceneDidDisconnect:(UIScene * _Nonnull)scene;
- (void)sceneDidBecomeActive:(UIScene * _Nonnull)scene;
- (void)sceneWillResignActive:(UIScene * _Nonnull)scene;
- (void)sceneWillEnterForeground:(UIScene * _Nonnull)scene;
- (void)sceneDidEnterBackground:(UIScene * _Nonnull)scene;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC6Grains12StoreManager")
@interface StoreManager : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class SKPaymentQueue;
@class SKPaymentTransaction;

@interface StoreManager (SWIFT_EXTENSION(Grains)) <SKPaymentTransactionObserver>
- (void)paymentQueue:(SKPaymentQueue * _Nonnull)queue updatedTransactions:(NSArray<SKPaymentTransaction *> * _Nonnull)transactions;
@end

@class SKProductsRequest;
@class SKProductsResponse;

@interface StoreManager (SWIFT_EXTENSION(Grains)) <SKProductsRequestDelegate>
- (void)productsRequest:(SKProductsRequest * _Nonnull)request didReceiveResponse:(SKProductsResponse * _Nonnull)response;
@end


SWIFT_CLASS("_TtC6Grains17UserNotifications")
@interface UserNotifications : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UNUserNotificationCenter;
@class UNNotificationResponse;
@class UNNotification;

@interface UserNotifications (SWIFT_EXTENSION(Grains)) <UNUserNotificationCenterDelegate>
- (void)userNotificationCenter:(UNUserNotificationCenter * _Nonnull)center didReceiveNotificationResponse:(UNNotificationResponse * _Nonnull)response withCompletionHandler:(void (^ _Nonnull)(void))completionHandler;
- (void)userNotificationCenter:(UNUserNotificationCenter * _Nonnull)center willPresentNotification:(UNNotification * _Nonnull)notification withCompletionHandler:(void (^ _Nonnull)(UNNotificationPresentationOptions))completionHandler;
@end

#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
