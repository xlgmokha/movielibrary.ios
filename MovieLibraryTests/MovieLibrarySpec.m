#import "Kiwi.h"

@interface Movie : NSObject
@end

@implementation Movie
@end

@interface MovieLibrary : NSObject
-(void)add:(Movie*)movie;
-(int)total_movies;
@end

@implementation MovieLibrary
-(void)add:(Movie*)movie
{
}
-(int)total_movies
{
  return 1;
}
@end


SPEC_BEGIN(MovieLibrarySpec)

describe(@"MovieLibrary", ^{
    it(@"should be able to add a movie", ^{
      MovieLibrary * library = [MovieLibrary new];
      Movie *movie = [Movie new];
      [library add:movie];
      int result = [library total_movies];
      [[theValue(result) should] equal:theValue(1)];
    });
});

SPEC_END
