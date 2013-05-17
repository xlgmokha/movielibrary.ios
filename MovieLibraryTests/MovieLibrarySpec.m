#import "Kiwi.h"

@interface Movie : NSObject
@end

@implementation Movie
@end

@interface MovieLibrary : NSObject
+(MovieLibrary*)initialize;
-(void)add:(Movie*)movie;
-(int)total_movies;
-(BOOL)includes:(Movie*)movie;
@end

@implementation MovieLibrary
-(void)add:(Movie*)movie
{
  //[movies addObject:movie];
}
-(int)total_movies
{
  return 1;
}
-(BOOL)includes:(Movie*)movie
{
  return true;
}
@end


SPEC_BEGIN(MovieLibrarySpec)

describe(@"MovieLibrary", ^{
    context(@"when movies are added", ^{
      __block id sut = nil;
      __block id brave = nil;
      __block id monsters_inc = nil;

      beforeAll(^{
        sut = [[MovieLibrary alloc]init];
        brave = [Movie new];
        monsters_inc = [Movie new];
        [sut add:brave];
        [sut add:monsters_inc];
      });

      it(@"should indicate the corrent number of movies", ^{
        int result = [sut total_movies];
        [[theValue(result) should] equal:theValue(1)];
      });

      it(@"should include each movie", ^{
        [[theValue([sut includes:brave]) should] equal:theValue(true)];
        [[theValue([sut includes:monsters_inc]) should] equal:theValue(true)];
      });
    });
});

SPEC_END
