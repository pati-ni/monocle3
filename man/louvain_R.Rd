% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cluster_cells.R
\encoding{UTF-8}
\name{louvain_R}
\alias{louvain_R}
\title{Cluster cells based on Louvain community detection algorithm.}
\usage{
louvain_R(X, python_home = Sys.which("python"),
  partition_method = "CPMVertexPartition", initial_membership = NULL,
  weights = NULL, res = 0.6, node_sizes = NULL, random_seed = 0L,
  verbose = FALSE, return_all = FALSE)
}
\arguments{
\item{X}{the dataset upon which to perform louvain-igraph}

\item{python_home}{The python home directory where louvain-igraph is
installed}

\item{partition_method}{character - either the default "CPMVertexPartition"
or "RBConfigurationVertexPartition" / "RBERVertexPartition".}

\item{initial_membership}{(list of int) – Initial membership for the
partition. If None then defaults to a singleton partition.}

\item{weights}{(list of double, or edge attribute) – Weights of edges. Can
be either an iterable or an edge attribute.}

\item{res}{(double) – Resolution parameter.}

\item{node_sizes}{(list of int, or vertex attribute) – Sizes of nodes are
necessary to know the size of communities in aggregate graphs. Usually
this is set to 1 for all nodes, but in specific cases this could be
changed.}

\item{random_seed}{the seed used by the random number generator in
louvain-igraph package}

\item{verbose}{boolean (optional, default False)}

\item{return_all}{Whether to return all slots after Louvain}
}
\value{
The cluster id if return_all set to be FALSE, otherwise all slots
from the Louvain function
}
\description{
This function is a wrapper of the louvain function from the
python package (louvain-igraph, https://github.com/vtraag/louvain-igraph)
The following description is from the original package "This package
implements the Louvain algorithm in C++ and exposes it to python. It relies
on (python-)igraph for it to function. Besides the relative flexibility of
the implementation, it also scales well, and can be run on graphs of
millions of nodes (as long as they can fit in memory). The core function is
find_partition which finds the optimal partition using the Louvain algorithm
for a number of different methods. The methods currently implemented are
(1) modularity, (2) Reichardt and Bornholdt's model using the
configuration null model and the Erdös-Rényi null model, (3) the
constant Potts model (CPM), (4) Significance, and finally (5)
Surprise. In addition, it supports multiplex partition optimization
allowing community detection on for example negative links or multiple
time slices. It also provides some support for community detection on
bipartite graphs. See the documentation for more information." Please see
the github above for the citations. Right now we only support
CPMVertexPartition, RBConfigurationVertexPartition, RBERVertexPartition,
ModularityVertexPartition SignificanceVertexPartition and
SurpriseVertexPartition partition methods.
}
