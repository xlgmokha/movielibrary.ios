#import "Kiwi.h"

@interface Movie : NSObject
@end

@implementation Movie
@end

@interface MovieLibrary : NSObject
@property (strong, nonatomic) NSMutableArray *items;
-(void)add:(Movie*)movie;
-(int)total_movies;
-(BOOL)includes:(Movie*)movie;
@end

@implementation MovieLibrary
-(id)init
{
  self = [super init];
  if(self) {
    _items = [[NSMutableArray alloc]init];
  }
  return self;
}
-(void)add:(Movie*)movie
{
  [_items addObject:movie];
}
-(int)total_movies
{
  return [_items count];
}
-(BOOL)includes:(Movie*)movie
{
  return [_items containsObject:movie];
}
@end


SPEC_BEGIN(MovieLibrarySpec)

describe(@"MovieLibrary", ^{
    context(@"when movies are added", ^{
      __block id sut = nil;
      __block id brave = nil;
      __block id monsters_inc = nil;
      __block id blah = nil;

      beforeAll(^{
        sut = [[MovieLibrary alloc]init];
        brave = [Movie new];
        monsters_inc = [Movie new];
        blah = [Movie new];
        [sut add:brave];
        [sut add:monsters_inc];
      });

      it(@"should indicate the corrent number of movies", ^{
        int result = [sut total_movies];
        [[theValue(result) should] equal:theValue(2)];
      });

      it(@"should include each movie", ^{
        [[theValue([sut includes:brave]) should] equal:theValue(true)];
        [[theValue([sut includes:monsters_inc]) should] equal:theValue(true)];
      });

      context(@"when a movie is not in the library", ^{
          it(@"should return false", ^{
            [[theValue([sut includes:blah]) should] equal:theValue(false)];
          });
      });
    });
});

SPEC_END
