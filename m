Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA84060CA4
	for <lists+linux-um@lfdr.de>; Fri,  5 Jul 2019 22:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uY57IeMEITCcIqxG04qaYEHPllzNVES+GqoDvW/Vjs=; b=p0NFLFChqdhyO9
	2WTXSHP5ehvYvvZvOGWHZh4HyaCQuTC/D8m1GKnoudDYECc1LDw/TtYYTmi+eTUQB0pBrLdoNGqnS
	0DC3LKan6ZP0iszx5FHFgFPgCWZd4I9mJV6MPBgcHNs75YlqyG1ssFOoOfGCAnyLhy/TrKqbSgG/n
	9xDvMNr86Iek9keeoBiGHg2W2C+eG5Z9ig5z468tGgUtx9uHXIowgl4o0TbUcIYJT/o3hp8KDQ/AB
	b8/DENfgLX8aHglhanQp2kf7RBZa6Uu64gLMffU+erFMxBfvmEiYvMs1t+FSFm7PLX2bYQjcMwx8q
	9hdP2X6UdEFZcAbKM3Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjV5n-0001TJ-DR; Fri, 05 Jul 2019 20:46:03 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjV5j-0001RB-BJ
 for linux-um@lists.infradead.org; Fri, 05 Jul 2019 20:46:00 +0000
Received: by mail-pf1-f196.google.com with SMTP id j2so4762920pfe.6
 for <linux-um@lists.infradead.org>; Fri, 05 Jul 2019 13:45:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x4GIgI5QbQFYYHeADDS48yN0XwXbMzJsu3FTa+FaXcs=;
 b=rzgVh3bXCJ5xldE6Lnbq+h3xXMkiSVUqdsI10OKYNF4RwHdJRbEphJTVHKgglg+aRg
 PKBzMu6hRanhQXCm5lo9pEgfANzoozJdqgEpa/WnewXhhcMkTGDENk+1Y3xw+LZIlrmJ
 I1WXTGAxj/S+OJZsIYEFFpg0EaQL86w6DvOc9tRjfTMEAO0HrLzVXSrv84hCWg0VRW38
 li+uemTae42UEz5nprhVCKdEG3N/vKWbAHl6zuodEerXc2+diOXnxeZhxzQmVy0zDWVK
 tmMS8XYdHWOx+Kop2gKpBMyZj64xgiZ9yecQ6SF1ev5QfjTDMDY2eULK8IZ5OWuAerrC
 k4ng==
X-Gm-Message-State: APjAAAWKCgfVzS2M4A9YgUZfA58ykUprvyKtkDyavc+NG/aTDqVa7ISD
 hORXZ9vOUqdhegC3eIwu7aE=
X-Google-Smtp-Source: APXvYqzeFsCVF2ZvnbfqZHx8vhkEXe3aUADAaqpXImPQcsaBURcoZTbfCuqJiBja1aAbbmI4GIuc+A==
X-Received: by 2002:a63:e018:: with SMTP id e24mr7383945pgh.361.1562359558392; 
 Fri, 05 Jul 2019 13:45:58 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id s66sm13955192pgs.39.2019.07.05.13.45.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 13:45:57 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 9151F40190; Fri,  5 Jul 2019 20:45:56 +0000 (UTC)
Date: Fri, 5 Jul 2019 20:45:56 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v6 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
Message-ID: <20190705204556.GD19023@42.do-not-panic.com>
References: <20190704003615.204860-1-brendanhiggins@google.com>
 <20190704003615.204860-18-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704003615.204860-18-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_134559_400930_B125C452 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, Iurii Zaikin <yzaikin@google.com>,
 jdike@addtoit.com, dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 05:36:14PM -0700, Brendan Higgins wrote:
> From: Iurii Zaikin <yzaikin@google.com>
> 
> KUnit tests for initialized data behavior of proc_dointvec that is
> explicitly checked in the code. Includes basic parsing tests including
> int min/max overflow.
> 
> Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Acked-by: Luis Chamberlain <mcgrof@kernel.org>

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
