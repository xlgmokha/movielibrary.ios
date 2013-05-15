//
//  SampleSpec.m
//  MovieLibrary
//
//  Created by mo khan on 2013-05-14.
//  Copyright (c) 2013 mo khan. All rights reserved.
//
#import "Kiwi.h"

SPEC_BEGIN(MathSpec)

describe(@"Math", ^{
    it(@"is pretty cool", ^{
      NSUInteger a = 16;
      NSUInteger b = 26;
      [[theValue(a+b) should] equal:theValue(43)];
    });
});

SPEC_END
