#include <iostream>
#include <algorithm>
#include <cstring>
#include <cstdio>
#include <sstream>
#include <numeric>
#include <iterator>
#include <queue>
#include <set>
#include <map>
#include <vector>

#define mp make_pair
#define pb push_back
#define sqr(x) ((x)*(x))
#define foreach(it,c) for(typeof((c).begin()) it = (c).begin(); it != (c).end(); ++it)

using namespace std;

typedef vector<int> VI;
typedef vector<VI> VVI;
typedef vector<string> VS;
typedef pair<int,int> PII;

template<typename T> int size(const T &a) { return a.size(); } 

int N,X,Y;
int combi[505][505];

void precalc() {
    memset(combi, 0, sizeof(combi));
    for(int i=1;i<=500;i++) {
        combi[i][0] = combi[i][i] = 1;
        for(int j=1;j<i;j++) {
            combi[i][j] = combi[i-1][j-1] + combi[i-1][j];
        }
    }
}

void process(void) {
    scanf("%d %d %d",&N, &X, &Y);

    double ret = 0;

    printf("%.12lf\n", ret);
}

int main(void)
{
    precalc();
    int T;
    scanf("%d", &T);
    for(int i=1;i<=T;i++) {
        printf("Case #%d: ", i);
        process();
        cerr << i << endl;
    }
}