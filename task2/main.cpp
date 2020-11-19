#include <iostream>
#include <vector>
#include <algorithm>
#include <math.h>
#include <random>
#include <iomanip>

const int R = 80;


struct Point {
    double x;
    double y;
    double distance; // расстояние от точки до начала координат (0, 0)

    explicit Point(double x = 0, double y = 0) : x(x), y(y) {
        distance = sqrt(x * x + y * y);
    }

    friend bool operator<(const Point &a, const Point &b);
};

bool operator<(const Point &a, const Point &b) { // перегружаем, чтобы отсортироваться по углу (используя косинус угла)
    if (a.y * b.y >= 0) { // то есть если точки находятся в одной полуплоскости относительно оси ox
        double cos_a =  a.x / a.distance;
        double cos_b = b.x / b.distance;
        if (a.y >= 0) {
            return cos_a > cos_b; // если косинус больше, то сам угол меньше - в верхней полуплоскости
        } else {
            return cos_a < cos_b; // если косинус больше, то сам угол больше - в нижней полуплоскости
        }
    } else {
        // точки находятся в разных полуплоскостях от-но оси ox; если y1 > 0, то y2 < 0 и наоборот
        return a.y > 0;
    }
}

std::ostream& operator<< (std::ostream &out, const Point &point) {
    out << std::fixed << std::setprecision(4) << "(" << point.x << ", " << point.y << ") ";
    return out;
}


void generate_rnd_vector(std::vector<Point> &points, int n) {
    double lower_bound = -100;
    double upper_bound = 100;
    std::uniform_real_distribution<double> dist(lower_bound, upper_bound);

    std::random_device rd;
    std::default_random_engine gen(rd());

    for (int i = 0; i < n; ++i) {
        double rnd_x = dist(gen);
        double rnd_y = dist(gen);

        points.emplace_back(rnd_x, rnd_y);
    }
}


int main() {
    int dots_num = 0;
    std::cin >> dots_num;

    std::vector<Point> points;
    generate_rnd_vector(points, dots_num);

    std::sort(points.begin(), points.end()); 

    std::vector<Point> result;

    for (auto const &point : points) {
        if (point.distance < 10 + R) {
            result.push_back(point);
        }
    }

    for (auto const &point : result) {
        std::cout << point << std::endl;
    }

    return 0;
}