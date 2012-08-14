//
//  iScreenSaverView.m
//  iScreenSaver
//
//  Created by Gaurav Raj on 8/14/12.
//  Copyright (c) 2012 Gaurav Raj. All rights reserved.
//

#import "iScreenSaverView.h"

@implementation iScreenSaverView

- (id)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];

    QTMovieView             *movieView;
    
    NSError* error = nil;
    QTMovie* movie = [QTMovie movieWithURL:[[NSBundle mainBundle] URLForResource:@"SS" withExtension:@"mp4"] error:&error];
    if(movie != nil)
    {
        [movieView setMovie:movie];
    }
    else
    {
        NSLog(@"Error loading movie: %@", [error localizedDescription]);
    }
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
