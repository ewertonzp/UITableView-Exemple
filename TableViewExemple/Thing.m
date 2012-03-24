//
//  Thing.m
//  TableViewExemple
//
//  Created by Roberto  Beraldo Chaiben on 17/03/12.
//  Copyright (c) 2012 Master Coding. All rights reserved.
//

#import "Thing.h"

@implementation Thing

@synthesize name, description;


- (Thing *) initWithName:(NSString *)n description:(NSString *)d
{
    if ( ! [self init] )
    {
        return nil;
    }
    
    self.name = n;
    self.description = d;
    
    return self;
}

@end
