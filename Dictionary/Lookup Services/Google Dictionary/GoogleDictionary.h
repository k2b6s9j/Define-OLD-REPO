//
//  GoogleDictionary.h
//  Dictionary
//
//  Created by Kepler Sticka-Jones on 10/14/13.
//  Copyright (c) 2013 Kepler Sticka-Jones. All rights reserved.
//

#import "DictonaryReferenceSource.h"

@interface GoogleDictionary : DictonaryReferenceSource

+(void)startUp;
+(BOOL)LookUp:(NSString *)term;

@end
