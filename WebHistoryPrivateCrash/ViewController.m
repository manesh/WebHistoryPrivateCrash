//
//  ViewController.m
//  WebHistoryPrivateCrash
//
//  Created by Michael Manesh on 6/4/13.
//  Copyright (c) 2013 Michael Manesh. All rights reserved.
//
// 

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)firstTapped:(id)sender
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"firstPage" ofType:@"html"];
    NSError *error;
    NSString *firstString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    
    NSURL *baseUrl = [NSURL URLWithString:@"http://www.washingtonpost.com/blogs/capital-weather-gang/"];
    
    [_webView loadHTMLString:firstString baseURL:baseUrl];
}

- (IBAction)secondTapped:(id)sender
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"secondPage" ofType:@"html"];
    NSError *error;
    NSString *secondString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    
    NSURL *baseUrl = [NSURL URLWithString:@"http://m.washingtonpost.com/blogs/capital-weather-gang/wp/2013/06/04/tropical-disturbance-in-gulf-of-mexico-heading-for-florida-eventually-up-east-coast/"];
    
    [_webView loadHTMLString:secondString baseURL:baseUrl];
}

@end
