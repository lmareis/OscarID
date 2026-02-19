using Revise, Oscar
U = gaussian_graphical_model(graph_from_edges(Directed, [[1,2],[2,3]]));
phi = parametrization(U)
I = vanishing_ideal(U)

X = affine_scheme(domain(phi), I, complement_of_prime_ideal(I))
Y = affine_scheme(codomain(phi))
phi_q = hom(OO(X), OO(Y), phi.(lifted_numerator.(gens(OO(X)))))

morphism(Y, X, phi_q)
