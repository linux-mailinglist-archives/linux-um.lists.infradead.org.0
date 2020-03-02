Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A805617644A
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 20:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJj3foKvmxIryDphmllUlM4YHBNEN9g5PyRfqoIF4yw=; b=Rg617B/zAavKT4
	cmCRuFbwR1wydmFA3c5sCoNUpfjPtYUD1bbkt0wXIejjp0yrfQQ4yRx/6u5cbIHiMIwfTigy+pV+s
	IK+cTGdrTww+AOJsZbfYWVlwCMsY2dZtIYuVgBLmGTC0Vud0aNSxVhk+HS65Wuc1he/d+/Jx7p7AG
	68VtiKTa1ypbp8DtQkuNmgMcjhGmp0YSVOEV8aQagnGTJFQMMgB6lhAZvDr0yxIAuMjFRXnby5hYL
	JNhvUPfDIHd6Q1UB6utp2TZUo47t1/ihNNbu9jTfXWAYAU8ewdPGMNLJat5f82PlaDT2zwfYGNlQJ
	IVDfp7fhNpiwZDTkqpjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8r62-0003ii-G0; Mon, 02 Mar 2020 19:51:22 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8r5z-0003g9-AW
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 19:51:20 +0000
Received: by mail-pj1-f67.google.com with SMTP id 12so232910pjb.5
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 11:51:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XZilsPo1YLBK8E1Pw4dZTb4vWmludtCsaaSac/3MMDA=;
 b=acGSxdad6AFX7oFKYOURGs96yjdSsBF7KIVsO0tDCcIPv4X7WvYhuGvSmED6zEwmeA
 42wnsGa9luGRYRiGx4srAVWUwVcjHhp69GexFASMVTlGG1PVJglyLcjHc/I+jbLvCepj
 10maZ2UJVeKuUVfz6J0IaoJPKY4FT+jEPYk3iVORSY/azJiEiHXYBEupUS1LcugyPyfx
 cUr4BeXtec2n5zDeG3KeuZ8NlgedwuhVPfdcMDfuoQxknQWY7uKbgtuEZiI6EKewOBMa
 iVuDNTWhT8xDX1qnfSZwAnXERfQxYNyvTEqIzfYt8WaO20QMFH4JmvDrfFqjYBHPIZ7M
 KLGw==
X-Gm-Message-State: ANhLgQ0lqw22CSxbBsO+OwYVIUaJwMv7dQwaVaAgx6QEQcl/KjfVI7uw
 qSTg1+4KTzq5fbsjgMT/9nY=
X-Google-Smtp-Source: ADFU+vuS0ADPbIa3jZAtxH/aZydWwHs+uUfQsj7YmFtYdS6DhQKs/Dg2ct3LeyPhDrcCzfEdr4nkUQ==
X-Received: by 2002:a17:90b:1256:: with SMTP id
 gx22mr102080pjb.94.1583178678241; 
 Mon, 02 Mar 2020 11:51:18 -0800 (PST)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id t142sm13594209pgb.31.2020.03.02.11.51.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 11:51:16 -0800 (PST)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 410D3413C3; Mon,  2 Mar 2020 19:51:16 +0000 (UTC)
Date: Mon, 2 Mar 2020 19:51:16 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [RFC v2 21/37] lkl tools: "boot" test
Message-ID: <20200302195116.GF11244@42.do-not-panic.com>
References: <fb0fcf4ffddaabc7eae82e25d7ec5ea9c37eb2ae.1573179553.git.thehajime@gmail.com>
 <20200123193315.132434-1-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123193315.132434-1-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_115119_373352_691E6A69 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, Mark Stillwell <mark@stillwell.me>,
 Conrad Meyer <cem@FreeBSD.org>, Octavian Purdila <tavi.purdila@gmail.com>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Motomu Utsumi <motomuman@gmail.com>,
 linux-um@lists.infradead.org, Akira Moroo <retrage01@gmail.com>,
 Petros Angelatos <petrosagg@gmail.com>, Yuan Liu <liuyuan@google.com>,
 Aleksa Sarai <cyphar@cyphar.com>, linux-kernel-library@freelists.org,
 Thomas Liebetraut <thomas@tommie-lie.de>, David Gow <davidgow@google.com>,
 David Disseldorp <ddiss@suse.de>, Patrick Collins <pscollins@google.com>,
 Luca Dariz <luca.dariz@gmail.com>, Hajime Tazaki <thehajime@gmail.com>,
 kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 11:33:15AM -0800, Brendan Higgins wrote:
> Luis,
> 
> Does this kind of match what you were thinking with the syscall testing?

Without looking too deeply into the code, it seems to be the case.
Are you going to expose / port kunit to tools/ to allow usersapace
to run kunit tests?

> In any case, I am excited about this. Please keep me posted in the
> future!

Yes please Cc me too.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
