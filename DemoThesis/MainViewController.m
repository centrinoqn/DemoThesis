//
//  MainViewController.m
//  DemoThesis
//
//  Created by VienLam on 7/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

#import "FindFriendViewController.h"

#import "ExploreViewController.h"

#import "FriendsViewController.h"

#import "UserViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize tabbarController = _tabbarController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [_tabbarController release];
    
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
   
    // Override point for customization after application launch.
    [[UINavigationBar appearance] setTintColor:COLOR_FOR_NAVIGATORBAR];
    [[UITabBar appearance] setTintColor:COLOR_FOR_TABBAR];
    
    FindFriendViewController *findFriendView = [[FindFriendViewController alloc] initWithNibName:@"FindFriendViewController" bundle:nil];
    findFriendView.title = @"Find Friend";
    UINavigationController *findFriendNavigation = [[[UINavigationController alloc] initWithRootViewController:findFriendView] autorelease];
    
    ExploreViewController *exploreView = [[ExploreViewController alloc] initWithNibName:@"ExploreViewController" bundle:nil];
    exploreView.title = @"Explore";
    UINavigationController *exploreNavigation = [[[UINavigationController alloc] initWithRootViewController:exploreView] autorelease];
    
    FriendsViewController *friendsView = [[FriendsViewController alloc] initWithNibName:@"FriendsViewController" bundle:nil];
    friendsView.title = @"Friends";
    UINavigationController *friendsNavigation = [[[UINavigationController alloc] initWithRootViewController:friendsView] autorelease];
    
    UserViewController *userView = [[UserViewController alloc] initWithNibName:@"UserViewController" bundle:nil];
    userView.title = @"User";
    UINavigationController *userNavigation = [[[UINavigationController alloc] initWithRootViewController:userView] autorelease];
    
    self.tabbarController = [[[UITabBarController alloc] init] autorelease];
    self.tabbarController.viewControllers = [NSArray arrayWithObjects:findFriendNavigation, exploreNavigation, friendsNavigation, userNavigation, nil];
    
    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
