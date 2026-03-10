data {
    int N;
    array[N] int y;
    real m0;
    real v0;
    real s0;
}

parameters {
    real mu;
    real<lower=0> sig2;
    real<lower=0> eta;
}

model {
    y ~ normal(mu, sqrt(sig2));
    mu ~ normal(m0, sqrt(v0));
    sig2 ~ inv_gamma(1.0 / 2, 1 / eta);
    eta ~ inv_gamma(1.0 / 2, 1 / s0^2);
}