#include <bits/stdc++.h>

#define FOR(i, a, b) for(int i = a;i < b;i++)
#define For(i, a) FOR(i, 0, a)
#define REV(i, a, b) for(int i = b-1;i >= a;i--)
#define Rev(i, a) REV(i, 0, a)
#define REP(a) For(i, a)
#ifdef DEBUG
#define DEBUG_PRINT(...) printf(__VA_ARGS__)
#else
#define DEBUG_PRINT(...)
#endif

using namespace std;
typedef long long ll;
typedef pair<int, int> pi;
typedef vector<int> vi;
void print_pair(pi a){
  cerr<<"("<<a.first<<", "<<a.second<<") ";
}
template<int T1, int T2>
void print_2d(int a[T1][T2], int x, int y){
  For(i, x){
    For(j, y){
      cerr<<a[i][j]<<" ";
    }
    cerr<<endl;
  }
}

const char *IMP = "IMPOSSIBLE";
const char *POS = "POSSIBLE";

int times, ans;

int main(){
  scanf("%d", &times);
  For(time, times){
    
answer:
    printf("Case #%d: %d\n", time+1, ans);
    continue;
possible:
    printf("Case #%d: %s\n", time+1, POS);
    continue;
impossible:
    printf("Case #%d: %s\n", time+1, IMP);
    continue;
  }
  return 0;
}
