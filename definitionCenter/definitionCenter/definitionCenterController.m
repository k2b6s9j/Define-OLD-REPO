//
//  definitionCenterController.m
//  definitionCenter
//
//  Created by Kepler Sticka-Jones on 2/5/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "definitionCenterController.h"

@implementation definitionCenterController

-(id)init
{
	if ((self = [super init]))
	{
	}

	return self;
}


- (UIView *)view
{
    //Starting up engine
    [BackEnd startUp];
    
    //Allowing the interface to recieve notifactions from the engine
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(displayDefinition:) name:@"displayDefinition" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noTerm:) name:@"noTerm" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noDef:) name:@"noDef" object:nil];
    
	if (_view == nil)
	{
		_view = [[UIView alloc] initWithFrame:CGRectMake(2, 0, 316, 71)];

		UIImage *bg = [[UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/definitionCenter.bundle/WeeAppBackground.png"] stretchableImageWithLeftCapWidth:5 topCapHeight:71];
		UIImageView *bgView = [[UIImageView alloc] initWithImage:bg];
		bgView.frame = CGRectMake(0, 0, 316, 71);
		[_view addSubview:bgView];

		/*
        UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 316, 71)];
		lbl.backgroundColor = [UIColor clearColor];
		lbl.textColor = [UIColor whiteColor];
		lbl.text = @"Hello, World!";
		lbl.textAlignment = UITextAlignmentCenter;
		[_view addSubview:lbl];
		[lbl release];
         */
        
        UITextField *termField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 300, 71)];
        UIButton *lookUpButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 16, 71)];
        [_view addSubview:termField];
        [_view addSubview:lookUpButton];
	}

	return _view;
}

- (float)viewHeight
{
	return 71.0f;
}

-(void)displayDefinition: (NSNotification *)notification
{
    NSLog(@"You should probably set up the definition view");
}

-(void)noTerm: (NSNotification *)notification
{
    NSLog(@"There was no term found in the box. You should probably set up the error view.");
}

-(void)noDef: (NSNotification *)notification
{
    NSLog(@"There was no definition found. You should probably set up the error view.");
}

@end