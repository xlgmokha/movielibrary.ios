#import "Kiwi.h"
#import "../MovieLibrary/Movie.m"
#import "../MovieLibrary/MovieLibrary.m"

SPEC_BEGIN(MovieLibrarySpec)

describe(@"MovieLibrary", ^{
    context(@"when movies are added", ^{
      __block id sut = nil;
      __block id brave = nil;
      __block id monsters_inc = nil;
      __block id blah = nil;

      beforeAll(^{
        sut = [MovieLibrary new];
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
