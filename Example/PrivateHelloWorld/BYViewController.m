//
//  BYViewController.m
//  PrivateHelloWorld
//
//  Created by niejinhao on 09/27/2020.
//  Copyright (c) 2020 niejinhao. All rights reserved.
//

#import "BYViewController.h"
#import "PrintHelloWorld.h"

@interface BYViewController ()

@end

@implementation BYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [PrintHelloWorld printHelloWorld];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
