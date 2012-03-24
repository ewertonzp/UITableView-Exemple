//
//  Thing.h
//  TableViewExemple
//
//  Created by Roberto  Beraldo Chaiben on 17/03/12.
//  Copyright (c) 2012 Master Coding. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Thing : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *description;


- (Thing *) initWithName:(NSString *)n description:(NSString *)d;

@end
